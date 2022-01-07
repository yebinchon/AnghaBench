
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_adc {int dummy; } ;


 int stm32h7_adc_disable (struct stm32_adc*) ;
 int stm32h7_adc_enter_pwr_down (struct stm32_adc*) ;

__attribute__((used)) static void stm32h7_adc_unprepare(struct stm32_adc *adc)
{
 stm32h7_adc_disable(adc);
 stm32h7_adc_enter_pwr_down(adc);
}
