
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int device_node; } ;
struct zynqmp_dma_chan {TYPE_2__ common; int tasklet; scalar_t__ irq; TYPE_1__* zdev; } ;
struct TYPE_3__ {int dev; } ;


 int devm_free_irq (int ,scalar_t__,struct zynqmp_dma_chan*) ;
 int list_del (int *) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static void zynqmp_dma_chan_remove(struct zynqmp_dma_chan *chan)
{
 if (!chan)
  return;

 if (chan->irq)
  devm_free_irq(chan->zdev->dev, chan->irq, chan);
 tasklet_kill(&chan->tasklet);
 list_del(&chan->common.device_node);
}
