
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct si1133_data {int dummy; } ;


 int SI1133_PARAM_REG_ADCSENS (int ) ;
 int si1133_chan_set_adcsens (struct si1133_data*,int ,int) ;
 int si1133_param_query (struct si1133_data*,int ,int*) ;

__attribute__((used)) static int si1133_update_adcsens(struct si1133_data *data, u8 mask,
     u8 shift, u8 value)
{
 int err;
 u32 adc_sens;

 err = si1133_param_query(data, SI1133_PARAM_REG_ADCSENS(0),
     &adc_sens);
 if (err)
  return err;

 adc_sens &= ~mask;
 adc_sens |= (value << shift);

 return si1133_chan_set_adcsens(data, 0, adc_sens);
}
