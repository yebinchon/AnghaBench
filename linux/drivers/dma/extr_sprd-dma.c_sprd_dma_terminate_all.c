
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct virt_dma_desc {int dummy; } ;
struct TYPE_5__ {int lock; } ;
struct sprd_dma_chn {TYPE_2__ vc; TYPE_1__* cur_desc; } ;
struct dma_chan {int dummy; } ;
struct TYPE_4__ {struct virt_dma_desc vd; } ;


 int LIST_HEAD (int ) ;
 int head ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sprd_dma_free_desc (struct virt_dma_desc*) ;
 int sprd_dma_stop (struct sprd_dma_chn*) ;
 struct sprd_dma_chn* to_sprd_dma_chan (struct dma_chan*) ;
 int vchan_dma_desc_free_list (TYPE_2__*,int *) ;
 int vchan_get_all_descriptors (TYPE_2__*,int *) ;

__attribute__((used)) static int sprd_dma_terminate_all(struct dma_chan *chan)
{
 struct sprd_dma_chn *schan = to_sprd_dma_chan(chan);
 struct virt_dma_desc *cur_vd = ((void*)0);
 unsigned long flags;
 LIST_HEAD(head);

 spin_lock_irqsave(&schan->vc.lock, flags);
 if (schan->cur_desc)
  cur_vd = &schan->cur_desc->vd;

 sprd_dma_stop(schan);

 vchan_get_all_descriptors(&schan->vc, &head);
 spin_unlock_irqrestore(&schan->vc.lock, flags);

 if (cur_vd)
  sprd_dma_free_desc(cur_vd);

 vchan_dma_desc_free_list(&schan->vc, &head);
 return 0;
}
