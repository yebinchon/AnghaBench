
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc27xx_adc_data {int dummy; } ;


 int sc27xx_adc_convert_volt (struct sc27xx_adc_data*,int,int,int) ;
 int sc27xx_adc_read (struct sc27xx_adc_data*,int,int,int*) ;

__attribute__((used)) static int sc27xx_adc_read_processed(struct sc27xx_adc_data *data,
         int channel, int scale, int *val)
{
 int ret, raw_adc;

 ret = sc27xx_adc_read(data, channel, scale, &raw_adc);
 if (ret)
  return ret;

 *val = sc27xx_adc_convert_volt(data, channel, scale, raw_adc);
 return 0;
}
