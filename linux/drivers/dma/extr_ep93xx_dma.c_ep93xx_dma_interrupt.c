
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ep93xx_dma_desc {int complete; } ;
struct ep93xx_dma_chan {int lock; int tasklet; int flags; TYPE_1__* edma; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int (* hw_interrupt ) (struct ep93xx_dma_chan*) ;} ;


 int EP93XX_DMA_IS_CYCLIC ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int chan2dev (struct ep93xx_dma_chan*) ;
 int dev_warn (int ,char*) ;
 struct ep93xx_dma_desc* ep93xx_dma_get_active (struct ep93xx_dma_chan*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct ep93xx_dma_chan*) ;
 int tasklet_schedule (int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static irqreturn_t ep93xx_dma_interrupt(int irq, void *dev_id)
{
 struct ep93xx_dma_chan *edmac = dev_id;
 struct ep93xx_dma_desc *desc;
 irqreturn_t ret = IRQ_HANDLED;

 spin_lock(&edmac->lock);

 desc = ep93xx_dma_get_active(edmac);
 if (!desc) {
  dev_warn(chan2dev(edmac),
    "got interrupt while active list is empty\n");
  spin_unlock(&edmac->lock);
  return IRQ_NONE;
 }

 switch (edmac->edma->hw_interrupt(edmac)) {
 case 129:
  desc->complete = 1;
  tasklet_schedule(&edmac->tasklet);
  break;

 case 128:
  if (test_bit(EP93XX_DMA_IS_CYCLIC, &edmac->flags))
   tasklet_schedule(&edmac->tasklet);
  break;

 default:
  dev_warn(chan2dev(edmac), "unknown interrupt!\n");
  ret = IRQ_NONE;
  break;
 }

 spin_unlock(&edmac->lock);
 return ret;
}
