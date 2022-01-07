
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stm32_dfsdm_adc {int fl_id; TYPE_1__* dfsdm; } ;
struct regmap {int dummy; } ;
struct TYPE_2__ {struct regmap* regmap; } ;


 int DFSDM_CR1 (int ) ;
 int DFSDM_CR1_CFG_MASK ;
 int regmap_update_bits (struct regmap*,int ,int ,int ) ;
 int stm32_dfsdm_stop_channel (struct stm32_dfsdm_adc*) ;
 int stm32_dfsdm_stop_filter (TYPE_1__*,int ) ;

__attribute__((used)) static void stm32_dfsdm_stop_conv(struct stm32_dfsdm_adc *adc)
{
 struct regmap *regmap = adc->dfsdm->regmap;

 stm32_dfsdm_stop_filter(adc->dfsdm, adc->fl_id);

 regmap_update_bits(regmap, DFSDM_CR1(adc->fl_id),
      DFSDM_CR1_CFG_MASK, 0);

 stm32_dfsdm_stop_channel(adc);
}
