
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u8 ;
typedef int u32 ;
struct si1133_data {int dummy; } ;


 int SI1133_PARAM_REG_ADCCONFIG (int ) ;
 int si1133_chan_set_adcconfig (struct si1133_data*,int ,int) ;
 int si1133_param_query (struct si1133_data*,int ,int*) ;

__attribute__((used)) static int si1133_update_adcconfig(struct si1133_data *data, uint8_t adc,
       u8 mask, u8 shift, u8 value)
{
 u32 adc_config;
 int err;

 err = si1133_param_query(data, SI1133_PARAM_REG_ADCCONFIG(adc),
     &adc_config);
 if (err)
  return err;

 adc_config &= ~mask;
 adc_config |= (value << shift);

 return si1133_chan_set_adcconfig(data, adc, adc_config);
}
