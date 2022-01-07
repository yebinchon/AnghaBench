
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct dma_chan {int dummy; } ;
struct TYPE_10__ {int lock; } ;
struct bcm2835_chan {TYPE_5__ vc; TYPE_2__* desc; } ;
struct TYPE_7__ {int flags; } ;
struct TYPE_9__ {TYPE_1__ tx; } ;
struct TYPE_8__ {TYPE_3__ vd; } ;


 int DMA_PREP_INTERRUPT ;
 int LIST_HEAD (int ) ;
 int bcm2835_dma_abort (struct bcm2835_chan*) ;
 int head ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct bcm2835_chan* to_bcm2835_dma_chan (struct dma_chan*) ;
 int vchan_dma_desc_free_list (TYPE_5__*,int *) ;
 int vchan_get_all_descriptors (TYPE_5__*,int *) ;
 int vchan_terminate_vdesc (TYPE_3__*) ;
 int vchan_vdesc_fini (TYPE_3__*) ;

__attribute__((used)) static int bcm2835_dma_terminate_all(struct dma_chan *chan)
{
 struct bcm2835_chan *c = to_bcm2835_dma_chan(chan);
 unsigned long flags;
 LIST_HEAD(head);

 spin_lock_irqsave(&c->vc.lock, flags);


 if (c->desc) {
  if (c->desc->vd.tx.flags & DMA_PREP_INTERRUPT)
   vchan_terminate_vdesc(&c->desc->vd);
  else
   vchan_vdesc_fini(&c->desc->vd);
  c->desc = ((void*)0);
  bcm2835_dma_abort(c);
 }

 vchan_get_all_descriptors(&c->vc, &head);
 spin_unlock_irqrestore(&c->vc.lock, flags);
 vchan_dma_desc_free_list(&c->vc, &head);

 return 0;
}
