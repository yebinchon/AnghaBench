
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bmp280_data {int oversampling_press; int regmap; } ;
typedef scalar_t__ __be32 ;


 int BMP180_MEAS_PRESS_X (int) ;
 int BMP180_REG_OUT_MSB ;
 int be32_to_cpu (scalar_t__) ;
 int bmp180_measure (struct bmp280_data*,int ) ;
 int regmap_bulk_read (int ,int ,int*,int) ;

__attribute__((used)) static int bmp180_read_adc_press(struct bmp280_data *data, int *val)
{
 int ret;
 __be32 tmp = 0;
 u8 oss = data->oversampling_press;

 ret = bmp180_measure(data, BMP180_MEAS_PRESS_X(oss));
 if (ret)
  return ret;

 ret = regmap_bulk_read(data->regmap, BMP180_REG_OUT_MSB, (u8 *)&tmp, 3);
 if (ret)
  return ret;

 *val = (be32_to_cpu(tmp) >> 8) >> (8 - oss);

 return 0;
}
