
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_adc {int dummy; } ;


 int STM32H7_ADC_CR ;
 int STM32H7_BOOST ;
 int STM32H7_DEEPPWD ;
 int stm32_adc_clr_bits (struct stm32_adc*,int ,int ) ;
 int stm32_adc_set_bits (struct stm32_adc*,int ,int ) ;

__attribute__((used)) static void stm32h7_adc_enter_pwr_down(struct stm32_adc *adc)
{
 stm32_adc_clr_bits(adc, STM32H7_ADC_CR, STM32H7_BOOST);


 stm32_adc_set_bits(adc, STM32H7_ADC_CR, STM32H7_DEEPPWD);
}
