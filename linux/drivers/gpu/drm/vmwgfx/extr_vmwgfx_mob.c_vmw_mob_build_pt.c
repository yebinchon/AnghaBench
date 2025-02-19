
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vmw_piter {int dummy; } ;
struct page {int dummy; } ;


 unsigned long DIV_ROUND_UP (unsigned long,unsigned long) ;
 unsigned long PAGE_SIZE ;
 unsigned long VMW_PPN_SIZE ;
 int WARN_ON (int) ;
 int * kmap_atomic (struct page*) ;
 int kunmap_atomic (int *) ;
 scalar_t__ unlikely (int) ;
 int vmw_mob_assign_ppn (int **,int ) ;
 int vmw_piter_dma_addr (struct vmw_piter*) ;
 int vmw_piter_next (struct vmw_piter*) ;
 struct page* vmw_piter_page (struct vmw_piter*) ;

__attribute__((used)) static unsigned long vmw_mob_build_pt(struct vmw_piter *data_iter,
          unsigned long num_data_pages,
          struct vmw_piter *pt_iter)
{
 unsigned long pt_size = num_data_pages * VMW_PPN_SIZE;
 unsigned long num_pt_pages = DIV_ROUND_UP(pt_size, PAGE_SIZE);
 unsigned long pt_page;
 u32 *addr, *save_addr;
 unsigned long i;
 struct page *page;

 for (pt_page = 0; pt_page < num_pt_pages; ++pt_page) {
  page = vmw_piter_page(pt_iter);

  save_addr = addr = kmap_atomic(page);

  for (i = 0; i < PAGE_SIZE / VMW_PPN_SIZE; ++i) {
   vmw_mob_assign_ppn(&addr,
        vmw_piter_dma_addr(data_iter));
   if (unlikely(--num_data_pages == 0))
    break;
   WARN_ON(!vmw_piter_next(data_iter));
  }
  kunmap_atomic(save_addr);
  vmw_piter_next(pt_iter);
 }

 return num_pt_pages;
}
