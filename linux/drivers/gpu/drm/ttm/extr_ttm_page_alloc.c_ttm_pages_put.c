
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int __free_pages (struct page*,unsigned int) ;
 int pr_err (char*,unsigned int) ;
 scalar_t__ ttm_set_pages_array_wb (struct page**,unsigned int) ;
 scalar_t__ ttm_set_pages_wb (struct page*,unsigned int) ;

__attribute__((used)) static void ttm_pages_put(struct page *pages[], unsigned npages,
  unsigned int order)
{
 unsigned int i, pages_nr = (1 << order);

 if (order == 0) {
  if (ttm_set_pages_array_wb(pages, npages))
   pr_err("Failed to set %d pages to wb!\n", npages);
 }

 for (i = 0; i < npages; ++i) {
  if (order > 0) {
   if (ttm_set_pages_wb(pages[i], pages_nr))
    pr_err("Failed to set %d pages to wb!\n", pages_nr);
  }
  __free_pages(pages[i], order);
 }
}
