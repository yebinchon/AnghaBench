
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vmw_sg_table {int mode; TYPE_2__* sgt; int addrs; int pages; int num_pages; } ;
struct TYPE_3__ {int base; } ;
struct vmw_piter {unsigned long i; TYPE_1__ iter; int * dma_address; int * next; int addrs; int pages; int * page; int num_pages; } ;
struct TYPE_4__ {int orig_nents; int sgl; } ;


 int BUG () ;
 int __sg_page_iter_start (int *,int ,int ,unsigned long) ;
 int __vmw_piter_dma_addr ;
 int __vmw_piter_non_sg_next ;
 int __vmw_piter_non_sg_page ;
 int __vmw_piter_phys_addr ;
 int __vmw_piter_sg_addr ;
 int __vmw_piter_sg_next ;





void vmw_piter_start(struct vmw_piter *viter, const struct vmw_sg_table *vsgt,
       unsigned long p_offset)
{
 viter->i = p_offset - 1;
 viter->num_pages = vsgt->num_pages;
 viter->page = &__vmw_piter_non_sg_page;
 viter->pages = vsgt->pages;
 switch (vsgt->mode) {
 case 128:
  viter->next = &__vmw_piter_non_sg_next;
  viter->dma_address = &__vmw_piter_phys_addr;
  break;
 case 131:
  viter->next = &__vmw_piter_non_sg_next;
  viter->dma_address = &__vmw_piter_dma_addr;
  viter->addrs = vsgt->addrs;
  break;
 case 129:
 case 130:
  viter->next = &__vmw_piter_sg_next;
  viter->dma_address = &__vmw_piter_sg_addr;
  __sg_page_iter_start(&viter->iter.base, vsgt->sgt->sgl,
         vsgt->sgt->orig_nents, p_offset);
  break;
 default:
  BUG();
 }
}
