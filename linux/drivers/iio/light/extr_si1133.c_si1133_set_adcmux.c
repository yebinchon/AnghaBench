
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct si1133_data {size_t* adc_config; } ;


 int SI1133_ADCMUX_MASK ;
 int si1133_update_adcconfig (struct si1133_data*,size_t,int ,int ,size_t) ;

__attribute__((used)) static int si1133_set_adcmux(struct si1133_data *data, u8 adc, u8 mux)
{
 if ((mux & data->adc_config[adc]) == mux)
  return 0;

 return si1133_update_adcconfig(data, adc, SI1133_ADCMUX_MASK, 0, mux);
}
