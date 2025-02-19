
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pagevec {int dummy; } ;
struct page {int dummy; } ;


 int __free_page (struct page*) ;
 int pagevec_add (struct pagevec*,struct page*) ;
 scalar_t__ pagevec_space (struct pagevec*) ;
 struct page* virt_to_page (void*) ;

__attribute__((used)) static void pool_free(struct pagevec *pv, void *addr)
{
 struct page *p = virt_to_page(addr);

 if (pagevec_space(pv))
  pagevec_add(pv, p);
 else
  __free_page(p);
}
