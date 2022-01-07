
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct stm32_dac {TYPE_1__* common; } ;
struct iio_dev {int dummy; } ;
struct TYPE_2__ {int regmap; } ;


 int FIELD_GET (int ,int ) ;
 int STM32_DAC_CR ;
 int STM32_DAC_CR_EN1 ;
 int STM32_DAC_CR_EN2 ;
 scalar_t__ STM32_DAC_IS_CHAN_1 (int) ;
 struct stm32_dac* iio_priv (struct iio_dev*) ;
 int regmap_read (int ,int ,int *) ;

__attribute__((used)) static int stm32_dac_is_enabled(struct iio_dev *indio_dev, int channel)
{
 struct stm32_dac *dac = iio_priv(indio_dev);
 u32 en, val;
 int ret;

 ret = regmap_read(dac->common->regmap, STM32_DAC_CR, &val);
 if (ret < 0)
  return ret;
 if (STM32_DAC_IS_CHAN_1(channel))
  en = FIELD_GET(STM32_DAC_CR_EN1, val);
 else
  en = FIELD_GET(STM32_DAC_CR_EN2, val);

 return !!en;
}
