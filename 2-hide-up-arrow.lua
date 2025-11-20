local FileChooser = require("ui/widget/filechooser")

local orig_genItemTable = FileChooser.genItemTable

function FileChooser:genItemTable(dirs, files, path)
    local items = orig_genItemTable(self, dirs, files, path)

    for _, item in ipairs(items) do
        if item.is_go_up then
            item.text = "../"
        end
    end

    return items
end
