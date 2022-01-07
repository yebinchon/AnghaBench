
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct device {int dummy; } ;
struct bme680_data {int regmap; } ;
typedef int s32 ;
typedef int s16 ;
typedef scalar_t__ __be32 ;


 int BME680_MEAS_SKIPPED ;
 int BME680_REG_TEMP_MSB ;
 int EINVAL ;
 int IIO_VAL_INT ;
 int be32_to_cpu (scalar_t__) ;
 int bme680_compensate_temp (struct bme680_data*,int) ;
 int bme680_set_mode (struct bme680_data*,int) ;
 int dev_err (struct device*,char*) ;
 int regmap_bulk_read (int ,int ,int *,int) ;
 struct device* regmap_get_device (int ) ;

__attribute__((used)) static int bme680_read_temp(struct bme680_data *data, int *val)
{
 struct device *dev = regmap_get_device(data->regmap);
 int ret;
 __be32 tmp = 0;
 s32 adc_temp;
 s16 comp_temp;


 ret = bme680_set_mode(data, 1);
 if (ret < 0)
  return ret;

 ret = regmap_bulk_read(data->regmap, BME680_REG_TEMP_MSB,
          (u8 *) &tmp, 3);
 if (ret < 0) {
  dev_err(dev, "failed to read temperature\n");
  return ret;
 }

 adc_temp = be32_to_cpu(tmp) >> 12;
 if (adc_temp == BME680_MEAS_SKIPPED) {

  dev_err(dev, "reading temperature skipped\n");
  return -EINVAL;
 }
 comp_temp = bme680_compensate_temp(data, adc_temp);






 if (val) {
  *val = comp_temp * 10;
  return IIO_VAL_INT;
 }

 return ret;
}
