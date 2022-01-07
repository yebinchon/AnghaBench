
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct stm32_adc {TYPE_5__* dma_chan; int rx_dma_buf; int rx_buf; TYPE_3__* cfg; scalar_t__ offset; TYPE_1__* common; } ;
struct iio_dev {int dev; } ;
struct dma_slave_config {int src_addr_width; scalar_t__ src_addr; } ;
typedef scalar_t__ dma_addr_t ;
typedef int config ;
struct TYPE_12__ {TYPE_4__* device; } ;
struct TYPE_11__ {int dev; } ;
struct TYPE_10__ {TYPE_2__* regs; } ;
struct TYPE_9__ {scalar_t__ dr; } ;
struct TYPE_8__ {scalar_t__ phys_base; } ;


 int DMA_SLAVE_BUSWIDTH_2_BYTES ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int STM32_DMA_BUFFER_SIZE ;
 int dma_alloc_coherent (int ,int ,int *,int ) ;
 int dma_free_coherent (int ,int ,int ,int ) ;
 int dma_release_channel (TYPE_5__*) ;
 TYPE_5__* dma_request_slave_channel (int *,char*) ;
 int dmaengine_slave_config (TYPE_5__*,struct dma_slave_config*) ;
 struct stm32_adc* iio_priv (struct iio_dev*) ;
 int memset (struct dma_slave_config*,int ,int) ;

__attribute__((used)) static int stm32_adc_dma_request(struct iio_dev *indio_dev)
{
 struct stm32_adc *adc = iio_priv(indio_dev);
 struct dma_slave_config config;
 int ret;

 adc->dma_chan = dma_request_slave_channel(&indio_dev->dev, "rx");
 if (!adc->dma_chan)
  return 0;

 adc->rx_buf = dma_alloc_coherent(adc->dma_chan->device->dev,
      STM32_DMA_BUFFER_SIZE,
      &adc->rx_dma_buf, GFP_KERNEL);
 if (!adc->rx_buf) {
  ret = -ENOMEM;
  goto err_release;
 }


 memset(&config, 0, sizeof(config));
 config.src_addr = (dma_addr_t)adc->common->phys_base;
 config.src_addr += adc->offset + adc->cfg->regs->dr;
 config.src_addr_width = DMA_SLAVE_BUSWIDTH_2_BYTES;

 ret = dmaengine_slave_config(adc->dma_chan, &config);
 if (ret)
  goto err_free;

 return 0;

err_free:
 dma_free_coherent(adc->dma_chan->device->dev, STM32_DMA_BUFFER_SIZE,
     adc->rx_buf, adc->rx_dma_buf);
err_release:
 dma_release_channel(adc->dma_chan);

 return ret;
}
