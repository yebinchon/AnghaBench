
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct device {int dummy; } ;
struct bme680_data {int regmap; } ;
typedef scalar_t__ s32 ;
typedef scalar_t__ __be16 ;


 int BM6880_REG_HUMIDITY_MSB ;
 scalar_t__ BME680_MEAS_SKIPPED ;
 int EINVAL ;
 int IIO_VAL_FRACTIONAL ;
 scalar_t__ be16_to_cpu (scalar_t__) ;
 int bme680_compensate_humid (struct bme680_data*,scalar_t__) ;
 int bme680_read_temp (struct bme680_data*,int *) ;
 int dev_err (struct device*,char*) ;
 int regmap_bulk_read (int ,int ,int *,int) ;
 struct device* regmap_get_device (int ) ;

__attribute__((used)) static int bme680_read_humid(struct bme680_data *data,
        int *val, int *val2)
{
 struct device *dev = regmap_get_device(data->regmap);
 int ret;
 __be16 tmp = 0;
 s32 adc_humidity;
 u32 comp_humidity;


 ret = bme680_read_temp(data, ((void*)0));
 if (ret < 0)
  return ret;

 ret = regmap_bulk_read(data->regmap, BM6880_REG_HUMIDITY_MSB,
          (u8 *) &tmp, 2);
 if (ret < 0) {
  dev_err(dev, "failed to read humidity\n");
  return ret;
 }

 adc_humidity = be16_to_cpu(tmp);
 if (adc_humidity == BME680_MEAS_SKIPPED) {

  dev_err(dev, "reading humidity skipped\n");
  return -EINVAL;
 }
 comp_humidity = bme680_compensate_humid(data, adc_humidity);

 *val = comp_humidity;
 *val2 = 1000;
 return IIO_VAL_FRACTIONAL;
}
