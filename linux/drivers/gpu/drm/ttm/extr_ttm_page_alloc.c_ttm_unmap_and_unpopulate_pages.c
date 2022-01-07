
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int num_pages; struct page** pages; } ;
struct ttm_dma_tt {TYPE_1__ ttm; int * dma_address; } ;
struct page {int dummy; } ;
struct device {int dummy; } ;


 int DMA_BIDIRECTIONAL ;
 size_t PAGE_SIZE ;
 int dma_unmap_page (struct device*,int ,size_t,int ) ;
 int ttm_pool_unpopulate (TYPE_1__*) ;

void ttm_unmap_and_unpopulate_pages(struct device *dev, struct ttm_dma_tt *tt)
{
 unsigned i, j;

 for (i = 0; i < tt->ttm.num_pages;) {
  struct page *p = tt->ttm.pages[i];
  size_t num_pages = 1;

  if (!tt->dma_address[i] || !tt->ttm.pages[i]) {
   ++i;
   continue;
  }

  for (j = i + 1; j < tt->ttm.num_pages; ++j) {
   if (++p != tt->ttm.pages[j])
    break;

   ++num_pages;
  }

  dma_unmap_page(dev, tt->dma_address[i], num_pages * PAGE_SIZE,
          DMA_BIDIRECTIONAL);

  i += num_pages;
 }
 ttm_pool_unpopulate(&tt->ttm);
}
