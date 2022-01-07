
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pagevec {int dummy; } ;
struct page {int dummy; } ;
typedef int gfp_t ;


 int ENOMEM ;
 struct page* alloc_page (int ) ;
 int pagevec_add (struct pagevec*,struct page*) ;
 scalar_t__ pagevec_space (struct pagevec*) ;

__attribute__((used)) static int pool_refill(struct pagevec *pv, gfp_t gfp)
{
 while (pagevec_space(pv)) {
  struct page *p;

  p = alloc_page(gfp);
  if (!p)
   return -ENOMEM;

  pagevec_add(pv, p);
 }

 return 0;
}
