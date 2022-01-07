
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u64 ;
struct pvrdma_page_dir {size_t npages; scalar_t__* pages; } ;
struct pvrdma_dev {TYPE_1__* pdev; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int dev; } ;


 int PAGE_SIZE ;
 int dma_free_coherent (int *,int ,scalar_t__,int ) ;
 int kfree (scalar_t__*) ;
 int pvrdma_page_dir_get_dma (struct pvrdma_page_dir*,size_t) ;

__attribute__((used)) static void pvrdma_page_dir_cleanup_pages(struct pvrdma_dev *dev,
       struct pvrdma_page_dir *pdir)
{
 if (pdir->pages) {
  u64 i;

  for (i = 0; i < pdir->npages && pdir->pages[i]; i++) {
   dma_addr_t page_dma = pvrdma_page_dir_get_dma(pdir, i);

   dma_free_coherent(&dev->pdev->dev, PAGE_SIZE,
       pdir->pages[i], page_dma);
  }

  kfree(pdir->pages);
 }
}
