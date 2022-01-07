
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int* lincalfact; int calfact_s; int calfact_d; int calibrated; } ;
struct stm32_adc {TYPE_1__ cal; } ;
struct iio_dev {int dev; } ;


 int STM32H7_ADC_CALFACT ;
 int STM32H7_ADC_CALFACT2 ;
 int STM32H7_ADC_CR ;
 int STM32H7_CALFACT_D_MASK ;
 int STM32H7_CALFACT_D_SHIFT ;
 int STM32H7_CALFACT_S_MASK ;
 int STM32H7_CALFACT_S_SHIFT ;
 int STM32H7_LINCALFACT_MASK ;
 int STM32H7_LINCALFACT_NUM ;
 int STM32H7_LINCALFACT_SHIFT ;
 int STM32H7_LINCALRDYW6 ;
 int STM32_ADC_TIMEOUT_US ;
 int dev_err (int *,char*) ;
 struct iio_dev* iio_priv_to_dev (struct stm32_adc*) ;
 int stm32_adc_clr_bits (struct stm32_adc*,int ,int) ;
 int stm32_adc_readl (struct stm32_adc*,int ) ;
 int stm32_adc_readl_poll_timeout (int ,int,int,int,int ) ;

__attribute__((used)) static int stm32h7_adc_read_selfcalib(struct stm32_adc *adc)
{
 struct iio_dev *indio_dev = iio_priv_to_dev(adc);
 int i, ret;
 u32 lincalrdyw_mask, val;


 lincalrdyw_mask = STM32H7_LINCALRDYW6;
 for (i = STM32H7_LINCALFACT_NUM - 1; i >= 0; i--) {

  stm32_adc_clr_bits(adc, STM32H7_ADC_CR, lincalrdyw_mask);


  ret = stm32_adc_readl_poll_timeout(STM32H7_ADC_CR, val,
         !(val & lincalrdyw_mask),
         100, STM32_ADC_TIMEOUT_US);
  if (ret) {
   dev_err(&indio_dev->dev, "Failed to read calfact\n");
   return ret;
  }

  val = stm32_adc_readl(adc, STM32H7_ADC_CALFACT2);
  adc->cal.lincalfact[i] = (val & STM32H7_LINCALFACT_MASK);
  adc->cal.lincalfact[i] >>= STM32H7_LINCALFACT_SHIFT;

  lincalrdyw_mask >>= 1;
 }


 val = stm32_adc_readl(adc, STM32H7_ADC_CALFACT);
 adc->cal.calfact_s = (val & STM32H7_CALFACT_S_MASK);
 adc->cal.calfact_s >>= STM32H7_CALFACT_S_SHIFT;
 adc->cal.calfact_d = (val & STM32H7_CALFACT_D_MASK);
 adc->cal.calfact_d >>= STM32H7_CALFACT_D_SHIFT;
 adc->cal.calibrated = 1;

 return 0;
}
