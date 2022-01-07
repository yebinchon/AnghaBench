
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int device_node; } ;
struct fsldma_chan {int regs; TYPE_1__ common; int irq; } ;


 int iounmap (int ) ;
 int irq_dispose_mapping (int ) ;
 int kfree (struct fsldma_chan*) ;
 int list_del (int *) ;

__attribute__((used)) static void fsl_dma_chan_remove(struct fsldma_chan *chan)
{
 irq_dispose_mapping(chan->irq);
 list_del(&chan->common.device_node);
 iounmap(chan->regs);
 kfree(chan);
}
