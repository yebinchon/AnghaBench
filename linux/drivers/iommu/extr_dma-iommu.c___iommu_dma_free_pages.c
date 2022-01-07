
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int __free_page (struct page*) ;
 int kvfree (struct page**) ;

__attribute__((used)) static void __iommu_dma_free_pages(struct page **pages, int count)
{
 while (count--)
  __free_page(pages[count]);
 kvfree(pages);
}
