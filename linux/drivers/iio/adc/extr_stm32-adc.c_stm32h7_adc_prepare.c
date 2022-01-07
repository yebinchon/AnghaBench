
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_adc {int pcsel; int difsel; } ;


 int STM32H7_ADC_DIFSEL ;
 int STM32H7_ADC_PCSEL ;
 int stm32_adc_writel (struct stm32_adc*,int ,int ) ;
 int stm32h7_adc_disable (struct stm32_adc*) ;
 int stm32h7_adc_enable (struct stm32_adc*) ;
 int stm32h7_adc_enter_pwr_down (struct stm32_adc*) ;
 int stm32h7_adc_exit_pwr_down (struct stm32_adc*) ;
 int stm32h7_adc_read_selfcalib (struct stm32_adc*) ;
 int stm32h7_adc_restore_selfcalib (struct stm32_adc*) ;
 int stm32h7_adc_selfcalib (struct stm32_adc*) ;

__attribute__((used)) static int stm32h7_adc_prepare(struct stm32_adc *adc)
{
 int calib, ret;

 ret = stm32h7_adc_exit_pwr_down(adc);
 if (ret)
  return ret;

 ret = stm32h7_adc_selfcalib(adc);
 if (ret < 0)
  goto pwr_dwn;
 calib = ret;

 stm32_adc_writel(adc, STM32H7_ADC_DIFSEL, adc->difsel);

 ret = stm32h7_adc_enable(adc);
 if (ret)
  goto pwr_dwn;


 if (calib)
  ret = stm32h7_adc_restore_selfcalib(adc);
 else
  ret = stm32h7_adc_read_selfcalib(adc);
 if (ret)
  goto disable;

 stm32_adc_writel(adc, STM32H7_ADC_PCSEL, adc->pcsel);

 return 0;

disable:
 stm32h7_adc_disable(adc);
pwr_dwn:
 stm32h7_adc_enter_pwr_down(adc);

 return ret;
}
