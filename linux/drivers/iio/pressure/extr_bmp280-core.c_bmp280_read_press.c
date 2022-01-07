
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct bmp280_data {int dev; int regmap; } ;
typedef int s32 ;
typedef scalar_t__ __be32 ;


 int BMP280_PRESS_SKIPPED ;
 int BMP280_REG_PRESS_MSB ;
 int EIO ;
 int IIO_VAL_FRACTIONAL ;
 int be32_to_cpu (scalar_t__) ;
 int bmp280_compensate_press (struct bmp280_data*,int) ;
 int bmp280_read_temp (struct bmp280_data*,int *) ;
 int dev_err (int ,char*) ;
 int regmap_bulk_read (int ,int ,int *,int) ;

__attribute__((used)) static int bmp280_read_press(struct bmp280_data *data,
        int *val, int *val2)
{
 int ret;
 __be32 tmp = 0;
 s32 adc_press;
 u32 comp_press;


 ret = bmp280_read_temp(data, ((void*)0));
 if (ret < 0)
  return ret;

 ret = regmap_bulk_read(data->regmap, BMP280_REG_PRESS_MSB,
          (u8 *) &tmp, 3);
 if (ret < 0) {
  dev_err(data->dev, "failed to read pressure\n");
  return ret;
 }

 adc_press = be32_to_cpu(tmp) >> 12;
 if (adc_press == BMP280_PRESS_SKIPPED) {

  dev_err(data->dev, "reading pressure skipped\n");
  return -EIO;
 }
 comp_press = bmp280_compensate_press(data, adc_press);

 *val = comp_press;
 *val2 = 256000;

 return IIO_VAL_FRACTIONAL;
}
