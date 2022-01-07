
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct stm32_dfsdm_adc {TYPE_2__* dma_chan; int dma_buf; int rx_buf; } ;
struct iio_dev {int dummy; } ;
struct TYPE_4__ {TYPE_1__* device; } ;
struct TYPE_3__ {int dev; } ;


 int DFSDM_DMA_BUFFER_SIZE ;
 int dma_free_coherent (int ,int ,int ,int ) ;
 int dma_release_channel (TYPE_2__*) ;
 struct stm32_dfsdm_adc* iio_priv (struct iio_dev*) ;

__attribute__((used)) static void stm32_dfsdm_dma_release(struct iio_dev *indio_dev)
{
 struct stm32_dfsdm_adc *adc = iio_priv(indio_dev);

 if (adc->dma_chan) {
  dma_free_coherent(adc->dma_chan->device->dev,
      DFSDM_DMA_BUFFER_SIZE,
      adc->rx_buf, adc->dma_buf);
  dma_release_channel(adc->dma_chan);
 }
}
