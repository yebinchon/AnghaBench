
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stm32_adc {int dummy; } ;
struct iio_dev {int dev; } ;


 int STM32H7_ADC_CR ;
 int STM32H7_ADDIS ;
 int STM32H7_ADEN ;
 int STM32_ADC_TIMEOUT_US ;
 int dev_warn (int *,char*) ;
 struct iio_dev* iio_priv_to_dev (struct stm32_adc*) ;
 int stm32_adc_readl_poll_timeout (int ,int,int,int,int ) ;
 int stm32_adc_set_bits (struct stm32_adc*,int ,int ) ;

__attribute__((used)) static void stm32h7_adc_disable(struct stm32_adc *adc)
{
 struct iio_dev *indio_dev = iio_priv_to_dev(adc);
 int ret;
 u32 val;


 stm32_adc_set_bits(adc, STM32H7_ADC_CR, STM32H7_ADDIS);
 ret = stm32_adc_readl_poll_timeout(STM32H7_ADC_CR, val,
        !(val & STM32H7_ADEN), 100,
        STM32_ADC_TIMEOUT_US);
 if (ret)
  dev_warn(&indio_dev->dev, "Failed to disable\n");
}
