
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct pl330_dmac {TYPE_1__ ddma; int lock; } ;
struct dma_pl330_chan {int lock; int thread; struct pl330_dmac* dmac; } ;
struct dma_chan {int dummy; } ;


 int _stop (int ) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct dma_pl330_chan* to_pchan (struct dma_chan*) ;

__attribute__((used)) static int pl330_pause(struct dma_chan *chan)
{
 struct dma_pl330_chan *pch = to_pchan(chan);
 struct pl330_dmac *pl330 = pch->dmac;
 unsigned long flags;

 pm_runtime_get_sync(pl330->ddma.dev);
 spin_lock_irqsave(&pch->lock, flags);

 spin_lock(&pl330->lock);
 _stop(pch->thread);
 spin_unlock(&pl330->lock);

 spin_unlock_irqrestore(&pch->lock, flags);
 pm_runtime_mark_last_busy(pl330->ddma.dev);
 pm_runtime_put_autosuspend(pl330->ddma.dev);

 return 0;
}
