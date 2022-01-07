
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmp_pdma_phy {TYPE_1__* vchan; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int tasklet; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ clear_chan_irq (struct mmp_pdma_phy*) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static irqreturn_t mmp_pdma_chan_handler(int irq, void *dev_id)
{
 struct mmp_pdma_phy *phy = dev_id;

 if (clear_chan_irq(phy) != 0)
  return IRQ_NONE;

 tasklet_schedule(&phy->vchan->tasklet);
 return IRQ_HANDLED;
}
