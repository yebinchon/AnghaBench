
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 unsigned long BIT (int ) ;
 int kunmap (struct page*) ;

__attribute__((used)) static void siw_unmap_pages(struct page **pp, unsigned long kmap_mask)
{
 while (kmap_mask) {
  if (kmap_mask & BIT(0))
   kunmap(*pp);
  pp++;
  kmap_mask >>= 1;
 }
}
