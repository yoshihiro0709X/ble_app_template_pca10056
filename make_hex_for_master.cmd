nrfutil settings generate --family NRF52840 --application Output\Release\Exe\app.hex --application-version 1 --bootloader-version 1 --bl-settings-version 1 --key-file private.key settings.hex
mergehex -m Output\Release\Exe\app.hex Output\Release\Exe\bootloader.hex settings.hex -o master_temp.hex
mergehex -m master_temp.hex ../../\components\softdevice\s140\hex\s140_nrf52_7.0.1_softdevice.hex -o dfu_master.hex
del settings.hex
del master_temp.hex
