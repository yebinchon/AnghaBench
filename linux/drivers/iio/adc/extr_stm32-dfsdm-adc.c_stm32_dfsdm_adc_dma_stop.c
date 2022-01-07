
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stm32_dfsdm_adc {int dma_chan; int fl_id; TYPE_1__* dfsdm; } ;
struct iio_dev {int dummy; } ;
struct TYPE_2__ {int regmap; } ;


 int DFSDM_CR1 (int ) ;
 int DFSDM_CR1_JDMAEN_MASK ;
 int DFSDM_CR1_RDMAEN_MASK ;
 int dmaengine_terminate_all (int ) ;
 struct stm32_dfsdm_adc* iio_priv (struct iio_dev*) ;
 int regmap_update_bits (int ,int ,int,int ) ;

__attribute__((used)) static void stm32_dfsdm_adc_dma_stop(struct iio_dev *indio_dev)
{
 struct stm32_dfsdm_adc *adc = iio_priv(indio_dev);

 if (!adc->dma_chan)
  return;

 regmap_update_bits(adc->dfsdm->regmap, DFSDM_CR1(adc->fl_id),
      DFSDM_CR1_RDMAEN_MASK | DFSDM_CR1_JDMAEN_MASK, 0);
 dmaengine_terminate_all(adc->dma_chan);
}
