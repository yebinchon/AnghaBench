
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_chan {int dummy; } ;
struct TYPE_2__ {int dev; } ;
struct cppi41_dd {TYPE_1__ ddev; int pending; } ;
struct cppi41_channel {struct cppi41_dd* cdd; } ;


 int WARN_ON (int) ;
 int list_empty (int *) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int pm_runtime_put_noidle (int ) ;
 struct cppi41_channel* to_cpp41_chan (struct dma_chan*) ;

__attribute__((used)) static void cppi41_dma_free_chan_resources(struct dma_chan *chan)
{
 struct cppi41_channel *c = to_cpp41_chan(chan);
 struct cppi41_dd *cdd = c->cdd;
 int error;

 error = pm_runtime_get_sync(cdd->ddev.dev);
 if (error < 0) {
  pm_runtime_put_noidle(cdd->ddev.dev);

  return;
 }

 WARN_ON(!list_empty(&cdd->pending));

 pm_runtime_mark_last_busy(cdd->ddev.dev);
 pm_runtime_put_autosuspend(cdd->ddev.dev);
}
