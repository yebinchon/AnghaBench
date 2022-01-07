
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct pvrdma_page_dir {scalar_t__ ntables; scalar_t__ npages; void** pages; void** tables; int * dir; int dir_dma; } ;
struct pvrdma_dev {TYPE_1__* pdev; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 scalar_t__ PVRDMA_PAGE_DIR_MAX_PAGES ;
 scalar_t__ PVRDMA_PAGE_DIR_TABLE (scalar_t__) ;
 void* dma_alloc_coherent (int *,int ,int *,int ) ;
 void* kcalloc (scalar_t__,int,int ) ;
 int memset (struct pvrdma_page_dir*,int ,int) ;
 int pvrdma_page_dir_cleanup (struct pvrdma_dev*,struct pvrdma_page_dir*) ;
 int pvrdma_page_dir_insert_dma (struct pvrdma_page_dir*,scalar_t__,int ) ;

int pvrdma_page_dir_init(struct pvrdma_dev *dev, struct pvrdma_page_dir *pdir,
    u64 npages, bool alloc_pages)
{
 u64 i;

 if (npages > PVRDMA_PAGE_DIR_MAX_PAGES)
  return -EINVAL;

 memset(pdir, 0, sizeof(*pdir));

 pdir->dir = dma_alloc_coherent(&dev->pdev->dev, PAGE_SIZE,
           &pdir->dir_dma, GFP_KERNEL);
 if (!pdir->dir)
  goto err;

 pdir->ntables = PVRDMA_PAGE_DIR_TABLE(npages - 1) + 1;
 pdir->tables = kcalloc(pdir->ntables, sizeof(*pdir->tables),
          GFP_KERNEL);
 if (!pdir->tables)
  goto err;

 for (i = 0; i < pdir->ntables; i++) {
  pdir->tables[i] = dma_alloc_coherent(&dev->pdev->dev, PAGE_SIZE,
      (dma_addr_t *)&pdir->dir[i],
      GFP_KERNEL);
  if (!pdir->tables[i])
   goto err;
 }

 pdir->npages = npages;

 if (alloc_pages) {
  pdir->pages = kcalloc(npages, sizeof(*pdir->pages),
          GFP_KERNEL);
  if (!pdir->pages)
   goto err;

  for (i = 0; i < pdir->npages; i++) {
   dma_addr_t page_dma;

   pdir->pages[i] = dma_alloc_coherent(&dev->pdev->dev,
           PAGE_SIZE,
           &page_dma,
           GFP_KERNEL);
   if (!pdir->pages[i])
    goto err;

   pvrdma_page_dir_insert_dma(pdir, i, page_dma);
  }
 }

 return 0;

err:
 pvrdma_page_dir_cleanup(dev, pdir);

 return -ENOMEM;
}
