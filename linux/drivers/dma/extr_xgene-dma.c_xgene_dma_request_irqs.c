
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_dma_chan {char* name; int rx_irq; int dev; struct xgene_dma_chan* chan; int err_irq; } ;
struct xgene_dma {char* name; int rx_irq; int dev; struct xgene_dma* chan; int err_irq; } ;


 int IRQ_DISABLE_UNLAZY ;
 int XGENE_DMA_MAX_CHANNEL ;
 int chan_err (struct xgene_dma_chan*,char*,int ) ;
 int dev_err (int ,char*,int ) ;
 int devm_free_irq (int ,int ,struct xgene_dma_chan*) ;
 int devm_request_irq (int ,int ,int ,int ,char*,struct xgene_dma_chan*) ;
 int irq_clear_status_flags (int ,int ) ;
 int irq_set_status_flags (int ,int ) ;
 int xgene_dma_chan_ring_isr ;
 int xgene_dma_err_isr ;

__attribute__((used)) static int xgene_dma_request_irqs(struct xgene_dma *pdma)
{
 struct xgene_dma_chan *chan;
 int ret, i, j;


 ret = devm_request_irq(pdma->dev, pdma->err_irq, xgene_dma_err_isr,
          0, "dma_error", pdma);
 if (ret) {
  dev_err(pdma->dev,
   "Failed to register error IRQ %d\n", pdma->err_irq);
  return ret;
 }


 for (i = 0; i < XGENE_DMA_MAX_CHANNEL; i++) {
  chan = &pdma->chan[i];
  irq_set_status_flags(chan->rx_irq, IRQ_DISABLE_UNLAZY);
  ret = devm_request_irq(chan->dev, chan->rx_irq,
           xgene_dma_chan_ring_isr,
           0, chan->name, chan);
  if (ret) {
   chan_err(chan, "Failed to register Rx IRQ %d\n",
     chan->rx_irq);
   devm_free_irq(pdma->dev, pdma->err_irq, pdma);

   for (j = 0; j < i; j++) {
    chan = &pdma->chan[i];
    irq_clear_status_flags(chan->rx_irq, IRQ_DISABLE_UNLAZY);
    devm_free_irq(chan->dev, chan->rx_irq, chan);
   }

   return ret;
  }
 }

 return 0;
}
