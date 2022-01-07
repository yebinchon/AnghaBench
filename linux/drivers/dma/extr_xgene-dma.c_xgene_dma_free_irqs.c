
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_dma_chan {int rx_irq; int dev; struct xgene_dma_chan* chan; int err_irq; } ;
struct xgene_dma {int rx_irq; int dev; struct xgene_dma* chan; int err_irq; } ;


 int IRQ_DISABLE_UNLAZY ;
 int XGENE_DMA_MAX_CHANNEL ;
 int devm_free_irq (int ,int ,struct xgene_dma_chan*) ;
 int irq_clear_status_flags (int ,int ) ;

__attribute__((used)) static void xgene_dma_free_irqs(struct xgene_dma *pdma)
{
 struct xgene_dma_chan *chan;
 int i;


 devm_free_irq(pdma->dev, pdma->err_irq, pdma);

 for (i = 0; i < XGENE_DMA_MAX_CHANNEL; i++) {
  chan = &pdma->chan[i];
  irq_clear_status_flags(chan->rx_irq, IRQ_DISABLE_UNLAZY);
  devm_free_irq(chan->dev, chan->rx_irq, chan);
 }
}
