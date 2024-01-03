Config = Config or {}

Config.Fuel = "np-fuel"        -- "ps-fuel", "LegacyFuel"
Config.ResourcePerms = 'admin' -- permission to control resource(start stop restart)
Config.ShowCommandsPerms = 'admin' -- permission to show all commands
Config.RenewedPhone = false    -- if you use qb-phone from renewed. (multijob)

-- Key Bindings
Config.Keybindings = true
Config.AdminKey = "PageUp"
Config.NoclipKey = "PageDown"

-- Give Car
Config.DefaultGarage = "Alta Garage"

Config.Actions = {
    ["admin_car"] = {
        label = "Araçı Üstüne Yap",
        type = "client",
        event = "ps-adminmenu:client:Admincar",
        perms = "mod",
    },

    ["ban_player"] = {
        label = "Oyunucu Banla",
        perms = "mod",
        dropdown = {
            { label = "Oyuncu", option = "dropdown", data = "players" },
            { label = "Sebep", option = "text" },
            {
                label = "Süre",
                option = "dropdown",
                data = {
                    { label = "Perma",  value = "2147483647" },
                    { label = "10 Dakika", value = "600" },
                    { label = "30 Dakika", value = "1800" },
                    { label = "1 Saat",     value = "3600" },
                    { label = "6 Saat",    value = "21600" },
                    { label = "12 Saat",   value = "43200" },
                    { label = "1 Gün",      value = "86400" },
                    { label = "3 Gün",     value = "259200" },
                    { label = "1 Hafta",     value = "604800" },
                    { label = "3 Hafta",     value = "1814400" },
                },
            },
            { label = "Onayla", option = "button", type = "server", event = "ps-adminmenu:server:BanPlayer" },
        },
    },

    ["bring_player"] = {
        label = "Oyuncuyu Yanına Çek",
        perms = "mod",
        dropdown = {
            { label = "Oyuncu",  option = "dropdown", data = "players" },
            { label = "Onayla", option = "button",   type = "server", event = "ps-adminmenu:server:BringPlayer" },
        },
    },

    ["change_weather"] = {
        label = "Havayı Değiştir",
        perms = "mod",
        dropdown = {
            {
                label = "Hava",
                option = "dropdown",
                data = {
                    { label = "Extrasunny", value = "Extrasunny" },
                    { label = "Clear",      value = "Clear" },
                    { label = "Neutral",    value = "Neutral" },
                    { label = "Smog",       value = "Smog" },
                    { label = "Foggy",      value = "Foggy" },
                    { label = "Overcast",   value = "Overcast" },
                    { label = "Clouds",     value = "Clouds" },
                    { label = "Clearing",   value = "Clearing" },
                    { label = "Rain",       value = "Rain" },
                    { label = "Thunder",    value = "Thunder" },
                    { label = "Snow",       value = "Snow" },
                    { label = "Blizzard",   value = "Blizzard" },
                    { label = "Snowlight",  value = "Snowlight" },
                    { label = "Xmas",       value = "Xmas" },
                    { label = "Halloween",  value = "Halloween" },
                },
            },
            { label = "Onayla", option = "button", type = "client", event = "ps-adminmenu:client:ChangeWeather" },
        },
    },

    ["change_time"] = {
        label = "Saati Değiştir",
        perms = "mod",
        dropdown = {
            {
                label = "Saatler",
                option = "dropdown",
                data = {
                    { label = "Gündoğumu", value = "06" },
                    { label = "Sabah", value = "09" },
                    { label = "Oğlen",    value = "12" },
                    { label = "Gün Batımı",  value = "21" },
                    { label = "Akşam", value = "22" },
                    { label = "Gece",   value = "24" },
                },
            },
            { label = "Onayla", option = "button", type = "client", event = "ps-adminmenu:client:ChangeTime" },
        },
    },

    ["change_plate"] = {
        label = "Plaka Değiştir",
        perms = "mod",
        dropdown = {
            { label = "Plaka",   option = "text" },
            { label = "Onayla", option = "button", type = "client", event = "ps-adminmenu:client:ChangePlate" },
        },
    },

    ["clear_inventory"] = {
        label = "Envanter Temizle",
        perms = "mod",
        dropdown = {
            { label = "Oyuncu",  option = "dropdown", data = "players" },
            { label = "Onayla", option = "button",   type = "server", event = "ps-adminmenu:server:ClearInventory" },
        },
    },

    ["clear_inventory_offline"] = {
        label = "Offline Envanter Temmizle",
        perms = "mod",
        dropdown = {
            { label = "Citizen ID", option = "text",   data = "players" },
            { label = "Onayla",    option = "button", type = "server", event = "ps-adminmenu:server:ClearInventoryOffline" },
        },
    },

    ["clothing_menu"] = {
        label = "Kıyafet Menüsü Ver",
        perms = "mod",
        dropdown = {
            { label = "Oyuncu",  option = "dropdown", data = "players" },
            { label = "Onayla", option = "button",   type = "server", event = "ps-adminmenu:server:ClothingMenu" },
        },
    },

    ["set_ped"] = {
        label = "Ped Ver",
        perms = "mod",
        dropdown = {
            { label = "Oyuncu",     option = "dropdown", data = "players" },
            { label = "Ped Modeli", option = "dropdown", data = "pedlist" },
            { label = "Onayla",    option = "button",   type = "server", event = "ps-adminmenu:server:setPed" },
        },
    },

    ["copy_coords"] = {
        label = "Kordinat",
        perms = "mod",
        dropdown = {
            {
                label = "Kordinat Kopyala",
                option = "dropdown",
                data = {
                    { label = "Koplayala Vector2", value = "vector2" },
                    { label = "Koplayala Vector3", value = "vector3" },
                    { label = "Koplayala Vector4",    value = "vector4" },
                    { label = "Koplayala Heading",  value = "heading" },
                },
            },
            { label = "Kopyala", option = "button", type = "client", event = "ps-adminmenu:client:copyToClipboard"},
        },
    },

    ["delete_vehicle"] = {
        label = "Araçı Sil",
        type = "command",
        event = "dv",
        perms = "mod",
    },

    ["freeze_player"] = {
        label = "Oyunucu Dondur",
        perms = "mod",
        dropdown = {
            { label = "Oyuncu",  option = "dropdown", data = "players" },
            { label = "Onayla", option = "button",   type = "server", event = "ps-adminmenu:server:FreezePlayer" },
        },
    },

    ["drunk_player"] = {
        label = "Oyunucuyu Sarhoş Yap",
        perms = "mod",
        dropdown = {
            { label = "Oyuncu",  option = "dropdown", data = "players" },
            { label = "Onayla", option = "button",   type = "server", event = "ps-adminmenu:server:DrunkPlayer" },
        },
    },

    ["remove_stress"] = {
        label = "Stressi Kaldır",
        perms = "mod",
        dropdown = {
            { label = "Oyuncu", option = "dropdown", data = "players" },
            { label = "Onayla",           option = "button",   type = "server", event = "ps-adminmenu:server:RemoveStress" },
        },
    },

    ["set_ammo"] = {
        label = "Mermi Ver",
        perms = "admin",
        dropdown = {
            { label = "Mermi Miktarı", option = "text" },
            { label = "Onayla",      option = "button", type = "client", event = "ps-adminmenu:client:SetAmmo" },
        },
    },

    -- ["nui_focus"] = {
    --     label = "Give NUI Focus",
    --     perms = "mod",
    --     dropdown = {
    --         { label = "Oyuncu",  option = "dropdown", data = "players" },
    --         { label = "Onayla", option = "button",   type = "client", event = "" },
    --     },
    -- },

    ["god_mode"] = {
        label = "Ölümsüzlük",
        type = "client",
        event = "ps-adminmenu:client:ToggleGodmode",
        perms = "mod",
    },

    ["give_car"] = {
        label = "Araç Ver",
        perms = "admin",
        dropdown = {
            { label = "Araç",           option = "dropdown", data = "vehicles" },
            { label = "Oyuncu",            option = "dropdown", data = "players" },
            { label = "Plaka",  option = "text" },
            { label = "Garaj", option = "text" },
            { label = "Onayla",           option = "button",   type = "server",  event = "ps-adminmenu:server:givecar" },
        }
    },

    ["invisible"] = {
        label = "Görünmezlik",
        type = "client",
        event = "ps-adminmenu:client:ToggleInvisible",
        perms = "mod",
    },

    ["blackout"] = {
        label = "ŞehrinElektriklerini Kes",
        type = "server",
        event = "ps-adminmenu:server:ToggleBlackout",
        perms = "mod",
    },

    ["toggle_duty"] = {
        label = "Mesai Gir/Çık",
        type = "server",
        event = "QBCore:ToggleDuty",
        perms = "mod",
    },

    ["toggle_laser"] = {
        label = "Laser (Bilmiyosan Kullanma)",
        type = "client",
        event = "ps-adminmenu:client:ToggleLaser",
        perms = "mod",
    },

    ["set_perms"] = {
        label = "Yetki Ver",
        perms = "admin",
        dropdown = {
            { label = "Oyuncu",  option = "dropdown", data = "players" },
            {
                label = "Yetkiler",
                option = "dropdown",
                data = {
                    { label = "Mod",   value = "mod" },
                    { label = "Admin", value = "admin" },
                    { label = "God",   value = "god" },
                },
            },
            { label = "Onayla", option = "button",   type = "server", event = "ps-adminmenu:server:SetPerms" },
        },
    },

    ["mute_player"] = {
        label = "Oyuncuyu Sustur",
        perms = "mod",
        dropdown = {
            { label = "Oyuncu",  option = "dropdown", data = "players" },
            { label = "Onayla", option = "button",   type = "client", event = "ps-adminmenu:client:MutePlayer" },
        },
    },

    ["noclip"] = {
        label = "Noclip",
        type = "client",
        event = "ps-adminmenu:client:ToggleNoClip",
        perms = "mod",
    },

    ["open_inventory"] = {
        label = "Envanter Aç",
        perms = "mod",
        dropdown = {
            { label = "Oyuncu",  option = "dropdown", data = "players" },
            { label = "Onayla", option = "button",   type = "client", event = "ps-adminmenu:client:openInventory" },
        },
    },

    ["open_stash"] = {
        label = "Depo Aç (Bilmiyosan Kullanma)",
        perms = "mod",
        dropdown = {
            { label = "Depo",   option = "text" },
            { label = "Onayla", option = "button", type = "client", event = "ps-adminmenu:client:openStash" },
        },
    },

    ["open_trunk"] = {
        label = "Torpido Aç (Bilmiyosan Kullanma)",
        perms = "mod",
        dropdown = {
            { label = "Plaka",   option = "text" },
            { label = "Onayla", option = "button", type = "client", event = "ps-adminmenu:client:openTrunk" },
        },
    },

    ["change_vehicle_state"] = {
        label = "Garaj Durumu Ayarla",
        perms = "mod",
        dropdown = {
            { label = "Plaka",   option = "text" },
            {
                label = "Durum",
                option = "dropdown",
                data = {
                    { label = "Garajda",  value = "1" },
                    { label = "Dışarda", value = "0" },
                },
            },
            { label = "Onayla", option = "button", type = "server", event = "ps-adminmenu:server:SetVehicleState" },
        },
    },

    ["revive_all"] = {
        label = "Herkesi Canlandır",
        type = "server",
        event = "ps-adminmenu:server:ReviveAll",
        perms = "mod",
    },

    ["revive_player"] = {
        label = "Oyuncuyu Canlandır",
        perms = "mod",
        dropdown = {
            { label = "Oyuncu",  option = "dropdown", data = "players" },
            { label = "Onayla", option = "button",   type = "server", event = "ps-adminmenu:server:Revive" },
        },
    },

    ["revive_radius"] = {
        label = "Yakındakileri Canlandır",
        type = "server",
        event = "ps-adminmenu:server:ReviveRadius",
        perms = "mod",
    },

    ["refuel_vehicle"] = {
        label = "Benzini Fulle",
        type = "client",
        event = "ps-adminmenu:client:RefuelVehicle",
        perms = "mod",
    },

    ["set_job"] = {
        label = "Meslek Ver",
        perms = "mod",
        dropdown = {
            { label = "Oyuncu",  option = "dropdown", data = "players" },
            { label = "Meslek",     option = "dropdown", data = "jobs" },
            { label = "Rütbe",   option = "text",     data = "grades" },
            { label = "Onayla", option = "button",   type = "server", event = "ps-adminmenu:server:SetJob" },
        },
    },

    ["set_gang"] = {
        label = "Çete Ver",
        perms = "mod",
        dropdown = {
            { label = "Oyuncu",  option = "dropdown", data = "players" },
            { label = "Çete",    option = "dropdown", data = "gangs" },
            { label = "Rütbe",   option = "text",     data = "grades" },
            { label = "Onayla", option = "button",   type = "server", event = "ps-adminmenu:server:SetGang" },
        },
    },

    ["give_money"] = {
        label = "Para Ver",
        perms = "admin",
        dropdown = {
            { label = "Oyuncu", option = "dropdown", data = "players" },
            { label = "Miktar", option = "text" },
            {
                label = "Para Tipi",
                option = "dropdown",
                data = {
                    { label = "Nakit",   value = "cash" },
                    { label = "Banka",   value = "bank" },
                },
            },
            { label = "Onayla", option = "button", type = "server", event = "ps-adminmenu:server:GiveMoney" },
        },
    },

    ["give_money_all"] = {
        label = "Herkese Para Ver",
        perms = "admin",
        dropdown = {
            { label = "Miktar",  option = "text" },
            {
                label = "Para Tipi",
                option = "dropdown",
                data = {
                    { label = "Nakit",   value = "cash" },
                    { label = "Banka",   value = "bank" },
                },
            },
            { label = "Onayla", option = "button", type = "server", event = "ps-adminmenu:server:GiveMoneyAll" },
        },
    },

    ["remove_money"] = {
        label = "Para Sil",
        perms = "admin",
        dropdown = {
            { label = "Oyuncu", option = "dropdown", data = "players" },
            { label = "Miktar", option = "text" },
            {
                label = "Para Tipi",
                option = "dropdown",
                data = {
                    { label = "Nakit", value = "cash" },
                    { label = "Banka", value = "bank" },
                },
            },
            { label = "Onayla", option = "button", type = "server", event = "ps-adminmenu:server:TakeMoney" },
        },
    },

    ["give_item"] = {
        label = "Eşya Ver",
        perms = "mod",
        dropdown = {
            { label = "Oyuncu",  option = "dropdown", data = "players" },
            { label = "Eşya",    option = "dropdown", data = "items" },
            { label = "Miktar",  option = "text" },
            { label = "Onayla", option = "button",   type = "server", event = "ps-adminmenu:server:GiveItem" },
        },
    },

    ["give_item_all"] = {
        label = "Herkese Eşya Ver",
        perms = "mod",
        dropdown = {
            { label = "Eşya",    option = "dropdown", data = "items" },
            { label = "Miktar",  option = "text" },
            { label = "Onayla", option = "button",   type = "server", event = "ps-adminmenu:server:GiveItemAll" },
        },
    },

    ["spawn_vehicle"] = {
        label = "Araba Çıkart",
        perms = "mod",
        dropdown = {
            { label = "Araba Modeli", option = "dropdown", data = "vehicles" },
            { label = "Onayla", option = "button",   type = "client",  event = "ps-adminmenu:client:SpawnVehicle" },
        },
    },

    ["fix_vehicle"] = {
        label = "Arabayı Düzelt",
        type = "command",
        event = "fix",
        perms = "mod",
    },

    ["fix_vehicle_for"] = {
        label = "Oyuncunun Arabasını Düzelt",
        perms = "mod",
        dropdown = {
            { label = "Oyuncu",  option = "dropdown", data = "players" },
            { label = "Onayla", option = "button",   type = "server", event = "ps-adminmenu:server:FixVehFor" },
        },
    },

    ["spectate_player"] = {
        label = "Oyuncuyu İzle",
        perms = "mod",
        dropdown = {
            { label = "Oyuncu",  option = "dropdown", data = "players" },
            { label = "Onayla", option = "button",   type = "server", event = "ps-adminmenu:server:SpectateTarget" },
        },
    },

    ["telport_to_player"] = {
        label = "Oyuncuya Işınlan",
        perms = "mod",
        dropdown = {
            { label = "Oyuncu",  option = "dropdown", data = "players" },
            { label = "Onayla", option = "button",   type = "server", event = "ps-adminmenu:server:TeleportToPlayer" },
        },
    },

    ["telport_to_coords"] = {
        label = "Kordinata Işınlan",
        perms = "mod",
        dropdown = {
            { label = "Kordinat",  option = "text" },
            { label = "Onayla", option = "button", type = "client", event = "ps-adminmenu:client:TeleportToCoords" },
        },
    },

    ["teleport_to_marker"] = {
        label = "Işarete Işınlan",
        type = "command",
        event = "tpm",
        perms = "mod",
    },

    ["teleport_back"] = {
        label = "Geri Işınlan",
        type = "client",
        event = "ps-adminmenu:client:TeleportBack",
        perms = "mod",
    },

    ["vehicle_dev"] = {
        label = "Araç Developer Modu",
        type = "client",
        event = "ps-adminmenu:client:ToggleVehDevMenu",
        perms = "god",
    },

    ["toggle_coords"] = {
        label = "Kordinatları Göster",
        type = "client",
        event = "ps-adminmenu:client:ToggleCoords",
        perms = "mod",
    },

    ["toggle_blips"] = {
        label = "Oyuncu Blipleri",
        type = "client",
        event = "ps-adminmenu:client:toggleBlips",
        perms = "mod",
    },

    ["toggle_names"] = {
        label = "Oyuncu İsimleri",
        type = "client",
        event = "ps-adminmenu:client:toggleNames",
        perms = "mod",
    },

    ["max_mods"] = {
        label = "Arabayı Fulle",
        type = "client",
        event = "ps-adminmenu:client:maxmodVehicle",
        perms = "mod",
    },

    ["warn_player"] = {
        label = "Oyuncuyu Uyar",
        perms = "admin",
        dropdown = {
            { label = "Oyuncu",  option = "dropdown", data = "players" },
            { label = "Sebep",  option = "text" },
            { label = "Onayla", option = "button",   type = "server", event = "ps-adminmenu:server:WarnPlayer" },
        },
    },

    ["infinite_ammo"] = {
        label = "Sınırsız Mermi",
        type = "client",
        event = "ps-adminmenu:client:setInfiniteAmmo",
        perms = "god",
    },

    ["kick_player"] = {
        label = "Oyuncuyu Kicle",
        perms = "admin",
        dropdown = {
            { label = "Oyuncu",  option = "dropdown", data = "players" },
            { label = "Sebep",  option = "text" },
            { label = "Onayla", option = "button",   type = "server", event = "ps-adminmenu:server:KickPlayer" },
        },
    },


    ["play_sound"] = {
        label = "Play Sound",
        perms = "mod",
        dropdown = {
            { label = "Oyuncu",     option = "dropdown", data = "players" },
            {
                label = "Sound",
                option = "dropdown",
                data = {
                    { label = "Alert",      value = "alert" },
                    { label = "Cuff",       value = "cuff" },
                    { label = "Air Wrench", value = "airwrench" },
                },
            },
            { label = "Play Sound", option = "button",   type = "client", event = "ps-adminmenu:client:PlaySound" },
        },
    },
}

Config.PlayerActions = {
    ["teleportToPlayer"] = {
        label = "Yanına Işınlan",
        type = "server",
        event = "ps-adminmenu:server:TeleportToPlayer",
        perms = "mod",
    },
    ["bringPlayer"] = {
        label = "Yanına Çek",
        type = "server",
        event = "ps-adminmenu:server:BringPlayer",
        perms = "mod",
    },
    ["revivePlayer"] = {
        label = "Canlandır",
        event = "ps-adminmenu:server:Revive",
        perms = "mod",
        type = "server"
    },
    ["spawnPersonalVehicle"] = {
        label = "Arabasını Çıkart",
        event = "ps-adminmenu:server:SpawnPersonalVehicle",
        perms = "mod",
        type = "client"
    },
    ["banPlayer"] = {
        label = "Banla",
        event = "ps-adminmenu:server:BanPlayer",
        perms = "mod",
        type = "server"
    },
    ["kickPlayer"] = {
        label = "Kicle",
        event = "ps-adminmenu:server:KickPlayer",
        perms = "mod",
        type = "server"
    }
}

Config.OtherActions = {
    ["toggleDevmode"] = {
        type = "client",
        event = "ps-adminmenu:client:ToggleDev",
        perms = "admin",
        label = "Developer Modu"
    }
}

AddEventHandler("onResourceStart", function()
    Wait(100)
    if GetResourceState('ox_inventory') == 'started' then
        Config.Inventory = 'ox_inventory'
    elseif GetResourceState('ps-inventory') == 'started' then
        Config.Inventory = 'ps-inventory'
    elseif GetResourceState('lj-inventory') == 'started' then
        Config.Inventory = 'lj-inventory'
    elseif GetResourceState('qb-inventory') == 'started' then
        Config.Inventory = 'qb-inventory'
    end
end)
