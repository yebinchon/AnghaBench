
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmp_tdma_chan {int tasklet; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ mmp_tdma_clear_chan_irq (struct mmp_tdma_chan*) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static irqreturn_t mmp_tdma_chan_handler(int irq, void *dev_id)
{
 struct mmp_tdma_chan *tdmac = dev_id;

 if (mmp_tdma_clear_chan_irq(tdmac) == 0) {
  tasklet_schedule(&tdmac->tasklet);
  return IRQ_HANDLED;
 } else
  return IRQ_NONE;
}
