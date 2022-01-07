
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct coh901318_chan {int tasklet; int lock; scalar_t__ busy; int nbr_active_done; int active; int allocated; } ;
struct TYPE_2__ {scalar_t__ priority_high; } ;


 int BUG_ON (int ) ;
 int COHC_2_DEV (struct coh901318_chan*) ;
 int * coh901318_queue_start (struct coh901318_chan*) ;
 TYPE_1__* cohc_chan_conf (struct coh901318_chan*) ;
 int dev_err (int ,char*) ;
 int list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tasklet_hi_schedule (int *) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static void dma_tc_handle(struct coh901318_chan *cohc)
{




 if (!cohc->allocated) {
  dev_err(COHC_2_DEV(cohc), "spurious interrupt from "
   "unallocated channel\n");
  return;
 }

 spin_lock(&cohc->lock);
 BUG_ON(list_empty(&cohc->active));

 cohc->nbr_active_done++;





 if (coh901318_queue_start(cohc) == ((void*)0))
  cohc->busy = 0;

 spin_unlock(&cohc->lock);





 if (cohc_chan_conf(cohc)->priority_high)
  tasklet_hi_schedule(&cohc->tasklet);
 else
  tasklet_schedule(&cohc->tasklet);
}
