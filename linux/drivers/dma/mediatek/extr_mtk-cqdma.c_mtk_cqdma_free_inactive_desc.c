
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virt_dma_chan {int lock; int desc_issued; int desc_submitted; int desc_allocated; } ;
struct dma_chan {int dummy; } ;


 int LIST_HEAD (int ) ;
 int head ;
 int list_splice_tail_init (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct virt_dma_chan* to_virt_chan (struct dma_chan*) ;
 int vchan_dma_desc_free_list (struct virt_dma_chan*,int *) ;

__attribute__((used)) static void mtk_cqdma_free_inactive_desc(struct dma_chan *c)
{
 struct virt_dma_chan *vc = to_virt_chan(c);
 unsigned long flags;
 LIST_HEAD(head);





 spin_lock_irqsave(&vc->lock, flags);
 list_splice_tail_init(&vc->desc_allocated, &head);
 list_splice_tail_init(&vc->desc_submitted, &head);
 list_splice_tail_init(&vc->desc_issued, &head);
 spin_unlock_irqrestore(&vc->lock, flags);


 vchan_dma_desc_free_list(vc, &head);
}
