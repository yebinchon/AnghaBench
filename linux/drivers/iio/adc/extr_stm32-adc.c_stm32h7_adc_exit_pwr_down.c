
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct stm32_adc {TYPE_2__* cfg; TYPE_1__* common; } ;
struct iio_dev {int dev; } ;
struct TYPE_4__ {int has_vregready; } ;
struct TYPE_3__ {scalar_t__ rate; } ;


 int STM32H7_ADC_CR ;
 int STM32H7_ADC_ISR ;
 int STM32H7_ADVREGEN ;
 int STM32H7_BOOST ;
 scalar_t__ STM32H7_BOOST_CLKRATE ;
 int STM32H7_DEEPPWD ;
 int STM32MP1_VREGREADY ;
 int STM32_ADC_TIMEOUT_US ;
 int dev_err (int *,char*) ;
 struct iio_dev* iio_priv_to_dev (struct stm32_adc*) ;
 int stm32_adc_clr_bits (struct stm32_adc*,int ,int ) ;
 int stm32_adc_readl_poll_timeout (int ,int,int,int,int ) ;
 int stm32_adc_set_bits (struct stm32_adc*,int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int stm32h7_adc_exit_pwr_down(struct stm32_adc *adc)
{
 struct iio_dev *indio_dev = iio_priv_to_dev(adc);
 int ret;
 u32 val;


 stm32_adc_clr_bits(adc, STM32H7_ADC_CR, STM32H7_DEEPPWD);
 stm32_adc_set_bits(adc, STM32H7_ADC_CR, STM32H7_ADVREGEN);

 if (adc->common->rate > STM32H7_BOOST_CLKRATE)
  stm32_adc_set_bits(adc, STM32H7_ADC_CR, STM32H7_BOOST);


 if (!adc->cfg->has_vregready) {
  usleep_range(10, 20);
  return 0;
 }

 ret = stm32_adc_readl_poll_timeout(STM32H7_ADC_ISR, val,
        val & STM32MP1_VREGREADY, 100,
        STM32_ADC_TIMEOUT_US);
 if (ret) {
  stm32_adc_set_bits(adc, STM32H7_ADC_CR, STM32H7_DEEPPWD);
  dev_err(&indio_dev->dev, "Failed to exit power down\n");
 }

 return ret;
}
