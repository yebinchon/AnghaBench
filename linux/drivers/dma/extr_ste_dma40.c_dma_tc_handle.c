
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct d40_desc {scalar_t__ lli_current; scalar_t__ lli_len; scalar_t__ cyclic; } ;
struct d40_chan {int busy; int tasklet; int pending_tx; TYPE_1__* base; } ;
struct TYPE_2__ {int dev; } ;


 int d40_desc_done (struct d40_chan*,struct d40_desc*) ;
 int d40_desc_load (struct d40_chan*,struct d40_desc*) ;
 int d40_desc_remove (struct d40_desc*) ;
 struct d40_desc* d40_first_active_get (struct d40_chan*) ;
 int d40_lcla_free_all (struct d40_chan*,struct d40_desc*) ;
 int * d40_queue_start (struct d40_chan*) ;
 int d40_residue (struct d40_chan*) ;
 int d40_start (struct d40_chan*) ;
 int d40_tx_is_linked (struct d40_chan*) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static void dma_tc_handle(struct d40_chan *d40c)
{
 struct d40_desc *d40d;


 d40d = d40_first_active_get(d40c);

 if (d40d == ((void*)0))
  return;

 if (d40d->cyclic) {






  if (d40d->lli_current < d40d->lli_len
      && !d40_tx_is_linked(d40c)
      && !d40_residue(d40c)) {
   d40_lcla_free_all(d40c, d40d);
   d40_desc_load(d40c, d40d);
   (void) d40_start(d40c);

   if (d40d->lli_current == d40d->lli_len)
    d40d->lli_current = 0;
  }
 } else {
  d40_lcla_free_all(d40c, d40d);

  if (d40d->lli_current < d40d->lli_len) {
   d40_desc_load(d40c, d40d);

   (void) d40_start(d40c);
   return;
  }

  if (d40_queue_start(d40c) == ((void*)0)) {
   d40c->busy = 0;

   pm_runtime_mark_last_busy(d40c->base->dev);
   pm_runtime_put_autosuspend(d40c->base->dev);
  }

  d40_desc_remove(d40d);
  d40_desc_done(d40c, d40d);
 }

 d40c->pending_tx++;
 tasklet_schedule(&d40c->tasklet);

}
