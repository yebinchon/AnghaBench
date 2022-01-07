
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct si1133_data {size_t* adc_config; } ;


 int SI1133_PARAM_REG_ADCCONFIG (size_t) ;
 int si1133_param_set (struct si1133_data*,int ,size_t) ;

__attribute__((used)) static int si1133_chan_set_adcconfig(struct si1133_data *data, u8 adc,
         u8 adc_config)
{
 int err;

 err = si1133_param_set(data, SI1133_PARAM_REG_ADCCONFIG(adc),
          adc_config);
 if (err)
  return err;

 data->adc_config[adc] = adc_config;

 return 0;
}
