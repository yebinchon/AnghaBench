
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int lock; } ;
struct omap_chan {int paused; int cyclic; TYPE_2__ vc; TYPE_1__* desc; } ;
struct dma_chan {int dummy; } ;
struct TYPE_4__ {int vd; } ;


 int LIST_HEAD (int ) ;
 int head ;
 int omap_dma_stop (struct omap_chan*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct omap_chan* to_omap_dma_chan (struct dma_chan*) ;
 int vchan_dma_desc_free_list (TYPE_2__*,int *) ;
 int vchan_get_all_descriptors (TYPE_2__*,int *) ;
 int vchan_terminate_vdesc (int *) ;

__attribute__((used)) static int omap_dma_terminate_all(struct dma_chan *chan)
{
 struct omap_chan *c = to_omap_dma_chan(chan);
 unsigned long flags;
 LIST_HEAD(head);

 spin_lock_irqsave(&c->vc.lock, flags);






 if (c->desc) {
  vchan_terminate_vdesc(&c->desc->vd);
  c->desc = ((void*)0);

  if (!c->paused)
   omap_dma_stop(c);
 }

 c->cyclic = 0;
 c->paused = 0;

 vchan_get_all_descriptors(&c->vc, &head);
 spin_unlock_irqrestore(&c->vc.lock, flags);
 vchan_dma_desc_free_list(&c->vc, &head);

 return 0;
}
