
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bmp280_data {int dummy; } ;
typedef int s32 ;


 int IIO_VAL_FRACTIONAL ;
 int bmp180_compensate_press (struct bmp280_data*,int ) ;
 int bmp180_read_adc_press (struct bmp280_data*,int *) ;
 int bmp180_read_temp (struct bmp280_data*,int *) ;

__attribute__((used)) static int bmp180_read_press(struct bmp280_data *data,
        int *val, int *val2)
{
 int ret;
 s32 adc_press;
 u32 comp_press;


 ret = bmp180_read_temp(data, ((void*)0));
 if (ret)
  return ret;

 ret = bmp180_read_adc_press(data, &adc_press);
 if (ret)
  return ret;

 comp_press = bmp180_compensate_press(data, adc_press);

 *val = comp_press;
 *val2 = 1000;

 return IIO_VAL_FRACTIONAL;
}
