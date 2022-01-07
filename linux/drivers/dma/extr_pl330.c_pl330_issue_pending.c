
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dma_pl330_chan {int active; int lock; int work_list; int submitted_list; TYPE_2__* dmac; } ;
struct dma_chan {int dummy; } ;
struct TYPE_3__ {int dev; } ;
struct TYPE_4__ {TYPE_1__ ddma; } ;


 int WARN_ON (scalar_t__) ;
 scalar_t__ list_empty (int *) ;
 int list_splice_tail_init (int *,int *) ;
 int pl330_tasklet (unsigned long) ;
 int pm_runtime_get_sync (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct dma_pl330_chan* to_pchan (struct dma_chan*) ;

__attribute__((used)) static void pl330_issue_pending(struct dma_chan *chan)
{
 struct dma_pl330_chan *pch = to_pchan(chan);
 unsigned long flags;

 spin_lock_irqsave(&pch->lock, flags);
 if (list_empty(&pch->work_list)) {





  WARN_ON(list_empty(&pch->submitted_list));
  pch->active = 1;
  pm_runtime_get_sync(pch->dmac->ddma.dev);
 }
 list_splice_tail_init(&pch->submitted_list, &pch->work_list);
 spin_unlock_irqrestore(&pch->lock, flags);

 pl330_tasklet((unsigned long)pch);
}
