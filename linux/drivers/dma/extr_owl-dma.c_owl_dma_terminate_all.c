
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int lock; } ;
struct owl_dma_vchan {TYPE_2__ vc; TYPE_1__* txd; scalar_t__ pchan; } ;
struct owl_dma {int dummy; } ;
struct dma_chan {int device; } ;
struct TYPE_4__ {int vd; } ;


 int LIST_HEAD (int ) ;
 int head ;
 int owl_dma_desc_free (int *) ;
 int owl_dma_phy_free (struct owl_dma*,struct owl_dma_vchan*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct owl_dma* to_owl_dma (int ) ;
 struct owl_dma_vchan* to_owl_vchan (struct dma_chan*) ;
 int vchan_dma_desc_free_list (TYPE_2__*,int *) ;
 int vchan_get_all_descriptors (TYPE_2__*,int *) ;

__attribute__((used)) static int owl_dma_terminate_all(struct dma_chan *chan)
{
 struct owl_dma *od = to_owl_dma(chan->device);
 struct owl_dma_vchan *vchan = to_owl_vchan(chan);
 unsigned long flags;
 LIST_HEAD(head);

 spin_lock_irqsave(&vchan->vc.lock, flags);

 if (vchan->pchan)
  owl_dma_phy_free(od, vchan);

 if (vchan->txd) {
  owl_dma_desc_free(&vchan->txd->vd);
  vchan->txd = ((void*)0);
 }

 vchan_get_all_descriptors(&vchan->vc, &head);
 vchan_dma_desc_free_list(&vchan->vc, &head);

 spin_unlock_irqrestore(&vchan->vc.lock, flags);

 return 0;
}
