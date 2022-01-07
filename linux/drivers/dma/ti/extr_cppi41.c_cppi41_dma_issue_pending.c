
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_chan {int dummy; } ;
struct TYPE_2__ {int dev; } ;
struct cppi41_dd {TYPE_1__ ddev; int lock; int is_suspended; int pending; } ;
struct cppi41_channel {int node; struct cppi41_dd* cdd; } ;


 int EINPROGRESS ;
 int cppi41_run_queue (struct cppi41_dd*) ;
 int dev_err (int ,char*,int) ;
 int list_add_tail (int *,int *) ;
 int pm_runtime_get (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int pm_runtime_put_noidle (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct cppi41_channel* to_cpp41_chan (struct dma_chan*) ;

__attribute__((used)) static void cppi41_dma_issue_pending(struct dma_chan *chan)
{
 struct cppi41_channel *c = to_cpp41_chan(chan);
 struct cppi41_dd *cdd = c->cdd;
 unsigned long flags;
 int error;

 error = pm_runtime_get(cdd->ddev.dev);
 if ((error != -EINPROGRESS) && error < 0) {
  pm_runtime_put_noidle(cdd->ddev.dev);
  dev_err(cdd->ddev.dev, "Failed to pm_runtime_get: %i\n",
   error);

  return;
 }

 spin_lock_irqsave(&cdd->lock, flags);
 list_add_tail(&c->node, &cdd->pending);
 if (!cdd->is_suspended)
  cppi41_run_queue(cdd);
 spin_unlock_irqrestore(&cdd->lock, flags);

 pm_runtime_mark_last_busy(cdd->ddev.dev);
 pm_runtime_put_autosuspend(cdd->ddev.dev);
}
