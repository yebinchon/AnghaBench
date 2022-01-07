
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct stm32_dfsdm_adc {TYPE_2__* dma_chan; int rx_buf; int dma_buf; } ;
struct iio_dev {int * setup_ops; int modes; int dev; } ;
struct TYPE_5__ {TYPE_1__* device; } ;
struct TYPE_4__ {int dev; } ;


 int DFSDM_DMA_BUFFER_SIZE ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INDIO_BUFFER_SOFTWARE ;
 int dma_alloc_coherent (int ,int ,int *,int ) ;
 int dma_release_channel (TYPE_2__*) ;
 TYPE_2__* dma_request_slave_channel (int *,char*) ;
 struct stm32_dfsdm_adc* iio_priv (struct iio_dev*) ;
 int stm32_dfsdm_buffer_setup_ops ;

__attribute__((used)) static int stm32_dfsdm_dma_request(struct iio_dev *indio_dev)
{
 struct stm32_dfsdm_adc *adc = iio_priv(indio_dev);

 adc->dma_chan = dma_request_slave_channel(&indio_dev->dev, "rx");
 if (!adc->dma_chan)
  return -EINVAL;

 adc->rx_buf = dma_alloc_coherent(adc->dma_chan->device->dev,
      DFSDM_DMA_BUFFER_SIZE,
      &adc->dma_buf, GFP_KERNEL);
 if (!adc->rx_buf) {
  dma_release_channel(adc->dma_chan);
  return -ENOMEM;
 }

 indio_dev->modes |= INDIO_BUFFER_SOFTWARE;
 indio_dev->setup_ops = &stm32_dfsdm_buffer_setup_ops;

 return 0;
}
