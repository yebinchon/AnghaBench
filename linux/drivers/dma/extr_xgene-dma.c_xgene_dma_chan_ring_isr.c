
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_dma_chan {int tasklet; int rx_irq; } ;
typedef int irqreturn_t ;


 int BUG_ON (int) ;
 int IRQ_HANDLED ;
 int disable_irq_nosync (int ) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static irqreturn_t xgene_dma_chan_ring_isr(int irq, void *id)
{
 struct xgene_dma_chan *chan = (struct xgene_dma_chan *)id;

 BUG_ON(!chan);





 disable_irq_nosync(chan->rx_irq);






 tasklet_schedule(&chan->tasklet);

 return IRQ_HANDLED;
}
