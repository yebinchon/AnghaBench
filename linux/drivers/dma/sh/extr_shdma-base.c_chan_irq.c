
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct shdma_ops {scalar_t__ (* chan_irq ) (struct shdma_chan*,int) ;} ;
struct TYPE_3__ {int device; } ;
struct shdma_chan {int chan_lock; TYPE_1__ dma_chan; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {struct shdma_ops* ops; } ;


 int IRQ_NONE ;
 int IRQ_WAKE_THREAD ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ stub1 (struct shdma_chan*,int) ;
 TYPE_2__* to_shdma_dev (int ) ;

__attribute__((used)) static irqreturn_t chan_irq(int irq, void *dev)
{
 struct shdma_chan *schan = dev;
 const struct shdma_ops *ops =
  to_shdma_dev(schan->dma_chan.device)->ops;
 irqreturn_t ret;

 spin_lock(&schan->chan_lock);

 ret = ops->chan_irq(schan, irq) ? IRQ_WAKE_THREAD : IRQ_NONE;

 spin_unlock(&schan->chan_lock);

 return ret;
}
