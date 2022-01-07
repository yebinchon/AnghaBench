
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct si1133_data {int* adc_sens; } ;


 int SI1133_PARAM_REG_ADCSENS (int ) ;
 int si1133_get_int_time_index (int,int) ;
 int si1133_param_set (struct si1133_data*,int ,int) ;

__attribute__((used)) static int si1133_set_integration_time(struct si1133_data *data, u8 adc,
           int milliseconds, int nanoseconds)
{
 int index;

 index = si1133_get_int_time_index(milliseconds, nanoseconds);
 if (index < 0)
  return index;

 data->adc_sens[adc] &= 0xF0;
 data->adc_sens[adc] |= index;

 return si1133_param_set(data, SI1133_PARAM_REG_ADCSENS(0),
    data->adc_sens[adc]);
}
