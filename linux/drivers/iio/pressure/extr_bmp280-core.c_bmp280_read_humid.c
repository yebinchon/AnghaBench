
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct bmp280_data {int dev; int regmap; } ;
typedef scalar_t__ s32 ;
typedef scalar_t__ __be16 ;


 scalar_t__ BMP280_HUMIDITY_SKIPPED ;
 int BMP280_REG_HUMIDITY_MSB ;
 int EIO ;
 int IIO_VAL_INT ;
 scalar_t__ be16_to_cpu (scalar_t__) ;
 int bmp280_compensate_humidity (struct bmp280_data*,scalar_t__) ;
 int bmp280_read_temp (struct bmp280_data*,int *) ;
 int dev_err (int ,char*) ;
 int regmap_bulk_read (int ,int ,int *,int) ;

__attribute__((used)) static int bmp280_read_humid(struct bmp280_data *data, int *val, int *val2)
{
 int ret;
 __be16 tmp = 0;
 s32 adc_humidity;
 u32 comp_humidity;


 ret = bmp280_read_temp(data, ((void*)0));
 if (ret < 0)
  return ret;

 ret = regmap_bulk_read(data->regmap, BMP280_REG_HUMIDITY_MSB,
          (u8 *) &tmp, 2);
 if (ret < 0) {
  dev_err(data->dev, "failed to read humidity\n");
  return ret;
 }

 adc_humidity = be16_to_cpu(tmp);
 if (adc_humidity == BMP280_HUMIDITY_SKIPPED) {

  dev_err(data->dev, "reading humidity skipped\n");
  return -EIO;
 }
 comp_humidity = bmp280_compensate_humidity(data, adc_humidity);

 *val = comp_humidity * 1000 / 1024;

 return IIO_VAL_INT;
}
