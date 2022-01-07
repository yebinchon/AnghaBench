
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct at91_twi_dma {int xfer_in_progress; scalar_t__ direction; int buf_mapped; int * sg; int chan_tx; int chan_rx; } ;
struct at91_twi_dev {int buf_len; int dev; struct at91_twi_dma dma; } ;


 scalar_t__ DMA_FROM_DEVICE ;
 int at91_twi_irq_restore (struct at91_twi_dev*) ;
 int at91_twi_irq_save (struct at91_twi_dev*) ;
 int dma_unmap_single (int ,int ,int ,scalar_t__) ;
 int dmaengine_terminate_all (int ) ;
 int sg_dma_address (int *) ;

__attribute__((used)) static void at91_twi_dma_cleanup(struct at91_twi_dev *dev)
{
 struct at91_twi_dma *dma = &dev->dma;

 at91_twi_irq_save(dev);

 if (dma->xfer_in_progress) {
  if (dma->direction == DMA_FROM_DEVICE)
   dmaengine_terminate_all(dma->chan_rx);
  else
   dmaengine_terminate_all(dma->chan_tx);
  dma->xfer_in_progress = 0;
 }
 if (dma->buf_mapped) {
  dma_unmap_single(dev->dev, sg_dma_address(&dma->sg[0]),
     dev->buf_len, dma->direction);
  dma->buf_mapped = 0;
 }

 at91_twi_irq_restore(dev);
}
