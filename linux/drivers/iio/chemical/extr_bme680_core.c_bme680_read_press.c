
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct device {int dummy; } ;
struct bme680_data {int regmap; } ;
typedef int s32 ;
typedef scalar_t__ __be32 ;


 int BME680_MEAS_SKIPPED ;
 int BME680_REG_PRESS_MSB ;
 int EINVAL ;
 int IIO_VAL_FRACTIONAL ;
 int be32_to_cpu (scalar_t__) ;
 int bme680_compensate_press (struct bme680_data*,int) ;
 int bme680_read_temp (struct bme680_data*,int *) ;
 int dev_err (struct device*,char*) ;
 int regmap_bulk_read (int ,int ,int *,int) ;
 struct device* regmap_get_device (int ) ;

__attribute__((used)) static int bme680_read_press(struct bme680_data *data,
        int *val, int *val2)
{
 struct device *dev = regmap_get_device(data->regmap);
 int ret;
 __be32 tmp = 0;
 s32 adc_press;


 ret = bme680_read_temp(data, ((void*)0));
 if (ret < 0)
  return ret;

 ret = regmap_bulk_read(data->regmap, BME680_REG_PRESS_MSB,
          (u8 *) &tmp, 3);
 if (ret < 0) {
  dev_err(dev, "failed to read pressure\n");
  return ret;
 }

 adc_press = be32_to_cpu(tmp) >> 12;
 if (adc_press == BME680_MEAS_SKIPPED) {

  dev_err(dev, "reading pressure skipped\n");
  return -EINVAL;
 }

 *val = bme680_compensate_press(data, adc_press);
 *val2 = 100;
 return IIO_VAL_FRACTIONAL;
}
