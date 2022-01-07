
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ingenic_adc {scalar_t__ base; } ;


 int BIT (int) ;
 scalar_t__ JZ_ADC_REG_ENABLE ;
 int ingenic_adc_enable (struct ingenic_adc*,int,int) ;
 int readb_poll_timeout (scalar_t__,int,int,int,int) ;

__attribute__((used)) static int ingenic_adc_capture(struct ingenic_adc *adc,
          int engine)
{
 u8 val;
 int ret;

 ingenic_adc_enable(adc, engine, 1);
 ret = readb_poll_timeout(adc->base + JZ_ADC_REG_ENABLE, val,
     !(val & BIT(engine)), 250, 1000);
 if (ret)
  ingenic_adc_enable(adc, engine, 0);

 return ret;
}
