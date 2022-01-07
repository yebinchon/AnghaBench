
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_dfsdm {int regmap; } ;


 int DFSDM_CR1 (unsigned int) ;
 int DFSDM_CR1_DFEN (int ) ;
 int DFSDM_CR1_DFEN_MASK ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static void stm32_dfsdm_stop_filter(struct stm32_dfsdm *dfsdm,
        unsigned int fl_id)
{

 regmap_update_bits(dfsdm->regmap, DFSDM_CR1(fl_id),
      DFSDM_CR1_DFEN_MASK, DFSDM_CR1_DFEN(0));
}
