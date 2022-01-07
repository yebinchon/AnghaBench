
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct stm32_dac {TYPE_1__* common; } ;
struct iio_dev {int dev; } ;
struct TYPE_2__ {scalar_t__ hfsel; int regmap; } ;


 int STM32_DAC_CR ;
 scalar_t__ STM32_DAC_CR_EN1 ;
 scalar_t__ STM32_DAC_CR_EN2 ;
 scalar_t__ STM32_DAC_IS_CHAN_1 (int) ;
 int dev_err (int *,char*,char*) ;
 struct stm32_dac* iio_priv (struct iio_dev*) ;
 int regmap_update_bits (int ,int ,scalar_t__,scalar_t__) ;
 int udelay (int) ;

__attribute__((used)) static int stm32_dac_set_enable_state(struct iio_dev *indio_dev, int ch,
          bool enable)
{
 struct stm32_dac *dac = iio_priv(indio_dev);
 u32 msk = STM32_DAC_IS_CHAN_1(ch) ? STM32_DAC_CR_EN1 : STM32_DAC_CR_EN2;
 u32 en = enable ? msk : 0;
 int ret;

 ret = regmap_update_bits(dac->common->regmap, STM32_DAC_CR, msk, en);
 if (ret < 0) {
  dev_err(&indio_dev->dev, "%s failed\n", en ?
   "Enable" : "Disable");
  return ret;
 }






 if (en && dac->common->hfsel)
  udelay(1);

 return 0;
}
