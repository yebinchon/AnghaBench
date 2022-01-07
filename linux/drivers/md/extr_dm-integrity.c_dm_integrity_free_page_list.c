
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page_list {scalar_t__ page; } ;


 int __free_page (scalar_t__) ;
 int kvfree (struct page_list*) ;

__attribute__((used)) static void dm_integrity_free_page_list(struct page_list *pl)
{
 unsigned i;

 if (!pl)
  return;
 for (i = 0; pl[i].page; i++)
  __free_page(pl[i].page);
 kvfree(pl);
}
