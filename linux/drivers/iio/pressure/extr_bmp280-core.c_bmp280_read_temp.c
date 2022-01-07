
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bmp280_data {int dev; int regmap; } ;
typedef int s32 ;
typedef scalar_t__ __be32 ;


 int BMP280_REG_TEMP_MSB ;
 int BMP280_TEMP_SKIPPED ;
 int EIO ;
 int IIO_VAL_INT ;
 int be32_to_cpu (scalar_t__) ;
 int bmp280_compensate_temp (struct bmp280_data*,int) ;
 int dev_err (int ,char*) ;
 int regmap_bulk_read (int ,int ,int *,int) ;

__attribute__((used)) static int bmp280_read_temp(struct bmp280_data *data,
       int *val)
{
 int ret;
 __be32 tmp = 0;
 s32 adc_temp, comp_temp;

 ret = regmap_bulk_read(data->regmap, BMP280_REG_TEMP_MSB,
          (u8 *) &tmp, 3);
 if (ret < 0) {
  dev_err(data->dev, "failed to read temperature\n");
  return ret;
 }

 adc_temp = be32_to_cpu(tmp) >> 12;
 if (adc_temp == BMP280_TEMP_SKIPPED) {

  dev_err(data->dev, "reading temperature skipped\n");
  return -EIO;
 }
 comp_temp = bmp280_compensate_temp(data, adc_temp);





 if (val) {
  *val = comp_temp * 10;
  return IIO_VAL_INT;
 }

 return 0;
}
