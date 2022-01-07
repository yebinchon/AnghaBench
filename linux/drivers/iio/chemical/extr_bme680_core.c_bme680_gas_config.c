
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct device {int dummy; } ;
struct bme680_data {int regmap; int heater_dur; int heater_temp; } ;


 int BME680_NB_CONV_MASK ;
 int BME680_REG_CTRL_GAS_1 ;
 int BME680_REG_GAS_WAIT_0 ;
 int BME680_REG_RES_HEAT_0 ;
 int BME680_RUN_GAS_MASK ;
 int FIELD_PREP (int,int) ;
 int bme680_calc_heater_dur (int ) ;
 int bme680_calc_heater_res (struct bme680_data*,int ) ;
 int dev_err (struct device*,char*) ;
 struct device* regmap_get_device (int ) ;
 int regmap_update_bits (int ,int ,int,int) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int bme680_gas_config(struct bme680_data *data)
{
 struct device *dev = regmap_get_device(data->regmap);
 int ret;
 u8 heatr_res, heatr_dur;

 heatr_res = bme680_calc_heater_res(data, data->heater_temp);


 ret = regmap_write(data->regmap, BME680_REG_RES_HEAT_0, heatr_res);
 if (ret < 0) {
  dev_err(dev, "failed to write res_heat_0 register\n");
  return ret;
 }

 heatr_dur = bme680_calc_heater_dur(data->heater_dur);


 ret = regmap_write(data->regmap, BME680_REG_GAS_WAIT_0, heatr_dur);
 if (ret < 0) {
  dev_err(dev, "failed to write gas_wait_0 register\n");
  return ret;
 }


 ret = regmap_update_bits(data->regmap, BME680_REG_CTRL_GAS_1,
     BME680_RUN_GAS_MASK | BME680_NB_CONV_MASK,
     FIELD_PREP(BME680_RUN_GAS_MASK, 1) |
     FIELD_PREP(BME680_NB_CONV_MASK, 0));
 if (ret < 0)
  dev_err(dev, "failed to write ctrl_gas_1 register\n");

 return ret;
}
