
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct bme680_data {int regmap; } ;


 int BME680_MODE_FORCED ;
 int BME680_MODE_MASK ;
 int BME680_MODE_SLEEP ;
 int BME680_REG_CTRL_MEAS ;
 int dev_err (struct device*,char*) ;
 struct device* regmap_get_device (int ) ;
 int regmap_write_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int bme680_set_mode(struct bme680_data *data, bool mode)
{
 struct device *dev = regmap_get_device(data->regmap);
 int ret;

 if (mode) {
  ret = regmap_write_bits(data->regmap, BME680_REG_CTRL_MEAS,
     BME680_MODE_MASK, BME680_MODE_FORCED);
  if (ret < 0)
   dev_err(dev, "failed to set forced mode\n");

 } else {
  ret = regmap_write_bits(data->regmap, BME680_REG_CTRL_MEAS,
     BME680_MODE_MASK, BME680_MODE_SLEEP);
  if (ret < 0)
   dev_err(dev, "failed to set sleep mode\n");

 }

 return ret;
}
