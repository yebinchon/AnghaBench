
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virt_dma_chan {int desc_completed; int desc_issued; int desc_submitted; int desc_allocated; } ;
struct list_head {int dummy; } ;


 int list_splice_tail_init (int *,struct list_head*) ;

__attribute__((used)) static inline void vchan_get_all_descriptors(struct virt_dma_chan *vc,
 struct list_head *head)
{
 list_splice_tail_init(&vc->desc_allocated, head);
 list_splice_tail_init(&vc->desc_submitted, head);
 list_splice_tail_init(&vc->desc_issued, head);
 list_splice_tail_init(&vc->desc_completed, head);
}
