
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_dma_chan {int rx_irq; } ;


 int enable_irq (int ) ;
 int xgene_dma_cleanup_descriptors (struct xgene_dma_chan*) ;

__attribute__((used)) static void xgene_dma_tasklet_cb(unsigned long data)
{
 struct xgene_dma_chan *chan = (struct xgene_dma_chan *)data;


 xgene_dma_cleanup_descriptors(chan);


 enable_irq(chan->rx_irq);
}
