
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 unsigned long mm_to_dma_pfn (int ) ;
 int page_to_pfn (struct page*) ;

__attribute__((used)) static inline unsigned long page_to_dma_pfn(struct page *pg)
{
 return mm_to_dma_pfn(page_to_pfn(pg));
}
