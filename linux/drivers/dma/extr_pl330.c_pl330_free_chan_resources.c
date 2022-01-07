
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct pl330_dmac {TYPE_1__ ddma; int lock; int desc_pool; } ;
struct dma_pl330_chan {struct pl330_dmac* dmac; int work_list; scalar_t__ cyclic; int * thread; int task; } ;
struct dma_chan {int dummy; } ;


 int list_splice_tail_init (int *,int *) ;
 int pl330_release_channel (int *) ;
 int pl330_unprep_slave_fifo (struct dma_pl330_chan*) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tasklet_kill (int *) ;
 struct dma_pl330_chan* to_pchan (struct dma_chan*) ;

__attribute__((used)) static void pl330_free_chan_resources(struct dma_chan *chan)
{
 struct dma_pl330_chan *pch = to_pchan(chan);
 struct pl330_dmac *pl330 = pch->dmac;
 unsigned long flags;

 tasklet_kill(&pch->task);

 pm_runtime_get_sync(pch->dmac->ddma.dev);
 spin_lock_irqsave(&pl330->lock, flags);

 pl330_release_channel(pch->thread);
 pch->thread = ((void*)0);

 if (pch->cyclic)
  list_splice_tail_init(&pch->work_list, &pch->dmac->desc_pool);

 spin_unlock_irqrestore(&pl330->lock, flags);
 pm_runtime_mark_last_busy(pch->dmac->ddma.dev);
 pm_runtime_put_autosuspend(pch->dmac->ddma.dev);
 pl330_unprep_slave_fifo(pch);
}
