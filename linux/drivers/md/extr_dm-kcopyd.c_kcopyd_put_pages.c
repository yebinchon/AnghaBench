
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page_list {struct page_list* next; } ;
struct dm_kcopyd_client {scalar_t__ nr_free_pages; scalar_t__ nr_reserved_pages; struct page_list* pages; } ;


 int free_pl (struct page_list*) ;

__attribute__((used)) static void kcopyd_put_pages(struct dm_kcopyd_client *kc, struct page_list *pl)
{
 struct page_list *next;

 do {
  next = pl->next;

  if (kc->nr_free_pages >= kc->nr_reserved_pages)
   free_pl(pl);
  else {
   pl->next = kc->pages;
   kc->pages = pl;
   kc->nr_free_pages++;
  }

  pl = next;
 } while (pl);
}
