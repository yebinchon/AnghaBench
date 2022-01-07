
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bmp280_data {int dummy; } ;
typedef int s32 ;


 int IIO_VAL_INT ;
 int bmp180_compensate_temp (struct bmp280_data*,int) ;
 int bmp180_read_adc_temp (struct bmp280_data*,int*) ;

__attribute__((used)) static int bmp180_read_temp(struct bmp280_data *data, int *val)
{
 int ret;
 s32 adc_temp, comp_temp;

 ret = bmp180_read_adc_temp(data, &adc_temp);
 if (ret)
  return ret;

 comp_temp = bmp180_compensate_temp(data, adc_temp);





 if (val) {
  *val = comp_temp * 100;
  return IIO_VAL_INT;
 }

 return 0;
}
