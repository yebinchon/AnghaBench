
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ calibrated; } ;
struct stm32_adc {TYPE_1__ cal; } ;
struct iio_dev {int dev; } ;


 int STM32H7_ADCAL ;
 int STM32H7_ADCALDIF ;
 int STM32H7_ADCALLIN ;
 int STM32H7_ADC_CALIB_TIMEOUT_US ;
 int STM32H7_ADC_CR ;
 int dev_err (int *,char*) ;
 struct iio_dev* iio_priv_to_dev (struct stm32_adc*) ;
 int stm32_adc_clr_bits (struct stm32_adc*,int ,int) ;
 int stm32_adc_readl_poll_timeout (int ,int,int,int,int ) ;
 int stm32_adc_set_bits (struct stm32_adc*,int ,int) ;

__attribute__((used)) static int stm32h7_adc_selfcalib(struct stm32_adc *adc)
{
 struct iio_dev *indio_dev = iio_priv_to_dev(adc);
 int ret;
 u32 val;

 if (adc->cal.calibrated)
  return 1;






 stm32_adc_clr_bits(adc, STM32H7_ADC_CR, STM32H7_ADCALDIF);
 stm32_adc_clr_bits(adc, STM32H7_ADC_CR, STM32H7_ADCALLIN);


 stm32_adc_set_bits(adc, STM32H7_ADC_CR, STM32H7_ADCAL);
 ret = stm32_adc_readl_poll_timeout(STM32H7_ADC_CR, val,
        !(val & STM32H7_ADCAL), 100,
        STM32H7_ADC_CALIB_TIMEOUT_US);
 if (ret) {
  dev_err(&indio_dev->dev, "calibration failed\n");
  goto out;
 }







 stm32_adc_set_bits(adc, STM32H7_ADC_CR,
      STM32H7_ADCALDIF | STM32H7_ADCALLIN);
 stm32_adc_set_bits(adc, STM32H7_ADC_CR, STM32H7_ADCAL);
 ret = stm32_adc_readl_poll_timeout(STM32H7_ADC_CR, val,
        !(val & STM32H7_ADCAL), 100,
        STM32H7_ADC_CALIB_TIMEOUT_US);
 if (ret) {
  dev_err(&indio_dev->dev, "calibration failed\n");
  goto out;
 }

out:
 stm32_adc_clr_bits(adc, STM32H7_ADC_CR,
      STM32H7_ADCALDIF | STM32H7_ADCALLIN);

 return ret;
}
