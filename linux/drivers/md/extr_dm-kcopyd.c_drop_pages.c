
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page_list {struct page_list* next; } ;


 int free_pl (struct page_list*) ;

__attribute__((used)) static void drop_pages(struct page_list *pl)
{
 struct page_list *next;

 while (pl) {
  next = pl->next;
  free_pl(pl);
  pl = next;
 }
}
