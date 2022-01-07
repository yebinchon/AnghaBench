
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bmc150_magn_preset {int odr; int rep_z; int rep_xy; } ;
struct bmc150_magn_data {int dev; int regmap; } ;


 int BMC150_MAGN_CHIP_ID_VAL ;
 size_t BMC150_MAGN_DEFAULT_PRESET ;
 int BMC150_MAGN_POWER_MODE_NORMAL ;
 int BMC150_MAGN_POWER_MODE_SUSPEND ;
 int BMC150_MAGN_REG_CHIP_ID ;
 int BMC150_MAGN_REG_REP_XY ;
 int BMC150_MAGN_REG_REP_Z ;
 int BMC150_MAGN_REPXY_TO_REGVAL (int ) ;
 int BMC150_MAGN_REPZ_TO_REGVAL (int ) ;
 int ENODEV ;
 struct bmc150_magn_preset* bmc150_magn_presets_table ;
 int bmc150_magn_set_max_odr (struct bmc150_magn_data*,int ,int ,int ) ;
 int bmc150_magn_set_odr (struct bmc150_magn_data*,int ) ;
 int bmc150_magn_set_power_mode (struct bmc150_magn_data*,int ,int) ;
 int dev_dbg (int ,char*,int) ;
 int dev_err (int ,char*,...) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int bmc150_magn_init(struct bmc150_magn_data *data)
{
 int ret, chip_id;
 struct bmc150_magn_preset preset;

 ret = bmc150_magn_set_power_mode(data, BMC150_MAGN_POWER_MODE_SUSPEND,
      0);
 if (ret < 0) {
  dev_err(data->dev,
   "Failed to bring up device from suspend mode\n");
  return ret;
 }

 ret = regmap_read(data->regmap, BMC150_MAGN_REG_CHIP_ID, &chip_id);
 if (ret < 0) {
  dev_err(data->dev, "Failed reading chip id\n");
  goto err_poweroff;
 }
 if (chip_id != BMC150_MAGN_CHIP_ID_VAL) {
  dev_err(data->dev, "Invalid chip id 0x%x\n", chip_id);
  ret = -ENODEV;
  goto err_poweroff;
 }
 dev_dbg(data->dev, "Chip id %x\n", chip_id);

 preset = bmc150_magn_presets_table[BMC150_MAGN_DEFAULT_PRESET];
 ret = bmc150_magn_set_odr(data, preset.odr);
 if (ret < 0) {
  dev_err(data->dev, "Failed to set ODR to %d\n",
   preset.odr);
  goto err_poweroff;
 }

 ret = regmap_write(data->regmap, BMC150_MAGN_REG_REP_XY,
      BMC150_MAGN_REPXY_TO_REGVAL(preset.rep_xy));
 if (ret < 0) {
  dev_err(data->dev, "Failed to set REP XY to %d\n",
   preset.rep_xy);
  goto err_poweroff;
 }

 ret = regmap_write(data->regmap, BMC150_MAGN_REG_REP_Z,
      BMC150_MAGN_REPZ_TO_REGVAL(preset.rep_z));
 if (ret < 0) {
  dev_err(data->dev, "Failed to set REP Z to %d\n",
   preset.rep_z);
  goto err_poweroff;
 }

 ret = bmc150_magn_set_max_odr(data, preset.rep_xy, preset.rep_z,
          preset.odr);
 if (ret < 0)
  goto err_poweroff;

 ret = bmc150_magn_set_power_mode(data, BMC150_MAGN_POWER_MODE_NORMAL,
      1);
 if (ret < 0) {
  dev_err(data->dev, "Failed to power on device\n");
  goto err_poweroff;
 }

 return 0;

err_poweroff:
 bmc150_magn_set_power_mode(data, BMC150_MAGN_POWER_MODE_SUSPEND, 1);
 return ret;
}
