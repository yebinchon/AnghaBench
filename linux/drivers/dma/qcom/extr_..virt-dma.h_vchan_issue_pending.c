
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virt_dma_chan {int desc_issued; int desc_submitted; } ;


 int list_empty (int *) ;
 int list_splice_tail_init (int *,int *) ;

__attribute__((used)) static inline bool vchan_issue_pending(struct virt_dma_chan *vc)
{
 list_splice_tail_init(&vc->desc_submitted, &vc->desc_issued);
 return !list_empty(&vc->desc_issued);
}
