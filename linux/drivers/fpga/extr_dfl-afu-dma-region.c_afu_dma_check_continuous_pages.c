
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dfl_afu_dma_region {int length; int * pages; } ;


 int PAGE_SHIFT ;
 scalar_t__ page_to_pfn (int ) ;

__attribute__((used)) static bool afu_dma_check_continuous_pages(struct dfl_afu_dma_region *region)
{
 int npages = region->length >> PAGE_SHIFT;
 int i;

 for (i = 0; i < npages - 1; i++)
  if (page_to_pfn(region->pages[i]) + 1 !=
    page_to_pfn(region->pages[i + 1]))
   return 0;

 return 1;
}
