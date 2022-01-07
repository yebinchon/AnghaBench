
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_device {int channels; } ;
struct TYPE_2__ {int device_node; struct dma_device* device; } ;
struct coh901318_chan {int id; TYPE_1__ chan; int tasklet; int queue; int active; int free; scalar_t__ busy; scalar_t__ nbr_active_done; int lock; struct coh901318_base* base; } ;
struct coh901318_base {struct coh901318_chan* chans; } ;


 int INIT_LIST_HEAD (int *) ;
 int dma_tasklet ;
 int list_add_tail (int *,int *) ;
 int spin_lock_init (int *) ;
 int tasklet_init (int *,int ,unsigned long) ;

__attribute__((used)) static void coh901318_base_init(struct dma_device *dma, const int *pick_chans,
    struct coh901318_base *base)
{
 int chans_i;
 int i = 0;
 struct coh901318_chan *cohc;

 INIT_LIST_HEAD(&dma->channels);

 for (chans_i = 0; pick_chans[chans_i] != -1; chans_i += 2) {
  for (i = pick_chans[chans_i]; i <= pick_chans[chans_i+1]; i++) {
   cohc = &base->chans[i];

   cohc->base = base;
   cohc->chan.device = dma;
   cohc->id = i;





   spin_lock_init(&cohc->lock);

   cohc->nbr_active_done = 0;
   cohc->busy = 0;
   INIT_LIST_HEAD(&cohc->free);
   INIT_LIST_HEAD(&cohc->active);
   INIT_LIST_HEAD(&cohc->queue);

   tasklet_init(&cohc->tasklet, dma_tasklet,
         (unsigned long) cohc);

   list_add_tail(&cohc->chan.device_node,
          &dma->channels);
  }
 }
}
