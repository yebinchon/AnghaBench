
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stm32_dac {TYPE_1__* common; } ;
struct TYPE_2__ {int regmap; } ;


 int STM32_DAC_DHR12R1 ;
 int STM32_DAC_DHR12R2 ;
 scalar_t__ STM32_DAC_IS_CHAN_1 (int) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int stm32_dac_set_value(struct stm32_dac *dac, int channel, int val)
{
 int ret;

 if (STM32_DAC_IS_CHAN_1(channel))
  ret = regmap_write(dac->common->regmap, STM32_DAC_DHR12R1, val);
 else
  ret = regmap_write(dac->common->regmap, STM32_DAC_DHR12R2, val);

 return ret;
}
