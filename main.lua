local alphabetlist = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()[{}]\|;:',./`~_+-="

function changesign(msg)
    
    if game.Players.LocalPlayer.Character:FindFirstChild('Sign') then
       if game.PlaceId == 9181090030 then
          game:GetService("Players").LocalPlayer.Character.Sign.UpdateSign:FireServer(msg)
       elseif game.PlaceId == 4924922222 then
          game:GetService("Players").LocalPlayer.Character.Sign.ToolSound:FireServer("Sign", "SignWords", msg)
       elseif game.PlaceId == 4924922222 then
          game:GetService("Players").LocalPlayer.Character.Sign.ToolSound:FireServer("Sign", "SignWords", msg)
       end
    end
end

function genstring(lenght)
    local char = ""
    for i=1,lenght do
       local random = math.random(1, #alphabetlist)
       local unicc = " "
       char = string.sub(alphabetlist, random, random) .. char
       if UniMode == "Random" then
          char = char .. unicc:rep(math.random(1,UniAmount) - #char)
       elseif UniMode == "Set" then
          char = char .. unicc:rep(UniAmount - #char)
       end
    end
    
    return char
end
if Mode == "Spike" then
   for i=1,4 do --game:GetService('RunService').Heartbeat:Wait()
       for i=1,500 do
          if AutoEquip then
             if game.Players.LocalPlayer.Backpack:FindFirstChild('Sign') then
                game.Players.LocalPlayer.Backpack:FindFirstChild('Sign').Parent = game.Players.LocalPlayer.Character
            end
        end
          changesign(genstring(Lenght) .. "              sen made this LOLL XD")
       end
   end
elseif Mode == "Permanent" then
   game:GetService('RunService').Heartbeat:Connect(function()
        if AutoEquip then
             if game.Players.LocalPlayer.Backpack:FindFirstChild('Sign') then
                game.Players.LocalPlayer.Backpack:FindFirstChild('Sign').Parent = game.Players.LocalPlayer.Character
            end
        end
        for i=1,100 do
            changesign(genstring(Lenght) .. "              sen made this LOLL XD")
        end
    end)
end
