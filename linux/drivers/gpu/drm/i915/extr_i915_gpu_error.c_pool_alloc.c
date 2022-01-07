
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pagevec {size_t nr; struct page** pages; } ;
struct page {int dummy; } ;
typedef int gfp_t ;


 struct page* alloc_page (int ) ;
 void* page_address (struct page*) ;
 scalar_t__ pagevec_count (struct pagevec*) ;

__attribute__((used)) static void *pool_alloc(struct pagevec *pv, gfp_t gfp)
{
 struct page *p;

 p = alloc_page(gfp);
 if (!p && pagevec_count(pv))
  p = pv->pages[--pv->nr];

 return p ? page_address(p) : ((void*)0);
}
