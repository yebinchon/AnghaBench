
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int src_maxburst; } ;
struct tiadc_dma {int fifo_thresh; int period_size; int chan; int cookie; int addr; TYPE_1__ conf; scalar_t__ current_period; } ;
struct tiadc_device {int total_ch_enabled; struct tiadc_dma dma; } ;
struct iio_dev {int dummy; } ;
struct dma_async_tx_descriptor {struct iio_dev* callback_param; int callback; } ;


 int DMA_BUFFER_SIZE ;
 int DMA_DEV_TO_MEM ;
 int DMA_FIFO1 ;
 int DMA_PREP_INTERRUPT ;
 int EBUSY ;
 int FIFO1_THRESHOLD ;
 int REG_DMA1REQ ;
 int REG_DMAENABLE_SET ;
 int REG_FIFO1THR ;
 int dma_async_issue_pending (int ) ;
 struct dma_async_tx_descriptor* dmaengine_prep_dma_cyclic (int ,int ,int,int,int ,int ) ;
 int dmaengine_slave_config (int ,TYPE_1__*) ;
 int dmaengine_submit (struct dma_async_tx_descriptor*) ;
 struct tiadc_device* iio_priv (struct iio_dev*) ;
 void* rounddown (int,int) ;
 int tiadc_dma_rx_complete ;
 int tiadc_writel (struct tiadc_device*,int ,int) ;

__attribute__((used)) static int tiadc_start_dma(struct iio_dev *indio_dev)
{
 struct tiadc_device *adc_dev = iio_priv(indio_dev);
 struct tiadc_dma *dma = &adc_dev->dma;
 struct dma_async_tx_descriptor *desc;

 dma->current_period = 0;







 dma->fifo_thresh = rounddown(FIFO1_THRESHOLD + 1,
         adc_dev->total_ch_enabled) - 1;

 dma->period_size = rounddown(DMA_BUFFER_SIZE / 2,
        (dma->fifo_thresh + 1) * sizeof(u16));

 dma->conf.src_maxburst = dma->fifo_thresh + 1;
 dmaengine_slave_config(dma->chan, &dma->conf);

 desc = dmaengine_prep_dma_cyclic(dma->chan, dma->addr,
      dma->period_size * 2,
      dma->period_size, DMA_DEV_TO_MEM,
      DMA_PREP_INTERRUPT);
 if (!desc)
  return -EBUSY;

 desc->callback = tiadc_dma_rx_complete;
 desc->callback_param = indio_dev;

 dma->cookie = dmaengine_submit(desc);

 dma_async_issue_pending(dma->chan);

 tiadc_writel(adc_dev, REG_FIFO1THR, dma->fifo_thresh);
 tiadc_writel(adc_dev, REG_DMA1REQ, dma->fifo_thresh);
 tiadc_writel(adc_dev, REG_DMAENABLE_SET, DMA_FIFO1);

 return 0;
}
