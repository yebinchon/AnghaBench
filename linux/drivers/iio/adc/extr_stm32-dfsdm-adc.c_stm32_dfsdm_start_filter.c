
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_dfsdm_adc {int nconv; struct stm32_dfsdm* dfsdm; } ;
struct stm32_dfsdm {int regmap; } ;
struct iio_trigger {int dummy; } ;


 int DFSDM_CR1 (unsigned int) ;
 int DFSDM_CR1_DFEN (int) ;
 int DFSDM_CR1_DFEN_MASK ;
 int DFSDM_CR1_RSWSTART (int) ;
 int DFSDM_CR1_RSWSTART_MASK ;
 int regmap_update_bits (int ,int ,int ,int ) ;

__attribute__((used)) static int stm32_dfsdm_start_filter(struct stm32_dfsdm_adc *adc,
        unsigned int fl_id,
        struct iio_trigger *trig)
{
 struct stm32_dfsdm *dfsdm = adc->dfsdm;
 int ret;


 ret = regmap_update_bits(dfsdm->regmap, DFSDM_CR1(fl_id),
     DFSDM_CR1_DFEN_MASK, DFSDM_CR1_DFEN(1));
 if (ret < 0)
  return ret;


 if (adc->nconv > 1 || trig)
  return 0;


 return regmap_update_bits(dfsdm->regmap, DFSDM_CR1(fl_id),
      DFSDM_CR1_RSWSTART_MASK,
      DFSDM_CR1_RSWSTART(1));
}
