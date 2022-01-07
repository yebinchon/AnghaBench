
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int put_page (struct page*) ;

__attribute__((used)) static void put_all_pages(struct page **pages, int npages)
{
 int i;

 for (i = 0; i < npages; i++)
  if (pages[i])
   put_page(pages[i]);
}
