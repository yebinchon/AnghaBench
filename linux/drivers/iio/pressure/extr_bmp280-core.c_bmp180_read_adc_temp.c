
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bmp280_data {int regmap; } ;
typedef scalar_t__ __be16 ;


 int BMP180_MEAS_TEMP ;
 int BMP180_REG_OUT_MSB ;
 int be16_to_cpu (scalar_t__) ;
 int bmp180_measure (struct bmp280_data*,int ) ;
 int regmap_bulk_read (int ,int ,int *,int) ;

__attribute__((used)) static int bmp180_read_adc_temp(struct bmp280_data *data, int *val)
{
 int ret;
 __be16 tmp = 0;

 ret = bmp180_measure(data, BMP180_MEAS_TEMP);
 if (ret)
  return ret;

 ret = regmap_bulk_read(data->regmap, BMP180_REG_OUT_MSB, (u8 *)&tmp, 2);
 if (ret)
  return ret;

 *val = be16_to_cpu(tmp);

 return 0;
}
