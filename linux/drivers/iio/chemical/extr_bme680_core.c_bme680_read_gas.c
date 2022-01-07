
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
typedef int u16 ;
struct device {int dummy; } ;
struct bme680_data {int regmap; } ;
typedef scalar_t__ __be16 ;


 int BME680_ADC_GAS_RES_SHIFT ;
 unsigned int BME680_GAS_MEAS_BIT ;
 unsigned int BME680_GAS_RANGE_MASK ;
 unsigned int BME680_GAS_STAB_BIT ;
 int BME680_REG_GAS_MSB ;
 int BME680_REG_GAS_R_LSB ;
 int BME680_REG_MEAS_STAT_0 ;
 int EBUSY ;
 int EINVAL ;
 int IIO_VAL_INT ;
 int be16_to_cpu (scalar_t__) ;
 int bme680_compensate_gas (struct bme680_data*,int,unsigned int) ;
 int bme680_gas_config (struct bme680_data*) ;
 int bme680_set_mode (struct bme680_data*,int) ;
 int dev_err (struct device*,char*) ;
 int regmap_bulk_read (int ,int ,unsigned int*,int) ;
 struct device* regmap_get_device (int ) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int bme680_read_gas(struct bme680_data *data,
      int *val)
{
 struct device *dev = regmap_get_device(data->regmap);
 int ret;
 __be16 tmp = 0;
 unsigned int check;
 u16 adc_gas_res;
 u8 gas_range;


 ret = bme680_gas_config(data);
 if (ret < 0) {
  dev_err(dev, "failed to set gas config\n");
  return ret;
 }


 ret = bme680_set_mode(data, 1);
 if (ret < 0)
  return ret;

 ret = regmap_read(data->regmap, BME680_REG_MEAS_STAT_0, &check);
 if (check & BME680_GAS_MEAS_BIT) {
  dev_err(dev, "gas measurement incomplete\n");
  return -EBUSY;
 }

 ret = regmap_read(data->regmap, BME680_REG_GAS_R_LSB, &check);
 if (ret < 0) {
  dev_err(dev, "failed to read gas_r_lsb register\n");
  return ret;
 }







 if ((check & BME680_GAS_STAB_BIT) == 0) {
  dev_err(dev, "heater failed to reach the target temperature\n");
  return -EINVAL;
 }

 ret = regmap_bulk_read(data->regmap, BME680_REG_GAS_MSB,
          (u8 *) &tmp, 2);
 if (ret < 0) {
  dev_err(dev, "failed to read gas resistance\n");
  return ret;
 }

 gas_range = check & BME680_GAS_RANGE_MASK;
 adc_gas_res = be16_to_cpu(tmp) >> BME680_ADC_GAS_RES_SHIFT;

 *val = bme680_compensate_gas(data, adc_gas_res, gas_range);
 return IIO_VAL_INT;
}
