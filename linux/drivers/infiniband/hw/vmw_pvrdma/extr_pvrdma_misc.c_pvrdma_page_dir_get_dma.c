
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct pvrdma_page_dir {int dummy; } ;
typedef int dma_addr_t ;


 size_t PVRDMA_PAGE_DIR_PAGE (int ) ;
 int * pvrdma_page_dir_table (struct pvrdma_page_dir*,int ) ;

dma_addr_t pvrdma_page_dir_get_dma(struct pvrdma_page_dir *pdir, u64 idx)
{
 return pvrdma_page_dir_table(pdir, idx)[PVRDMA_PAGE_DIR_PAGE(idx)];
}
