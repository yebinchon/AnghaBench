
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page_list {struct page_list* next; } ;
struct dm_kcopyd_client {unsigned int nr_reserved_pages; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct page_list* alloc_pl (int ) ;
 int drop_pages (struct page_list*) ;
 int kcopyd_put_pages (struct dm_kcopyd_client*,struct page_list*) ;

__attribute__((used)) static int client_reserve_pages(struct dm_kcopyd_client *kc, unsigned nr_pages)
{
 unsigned i;
 struct page_list *pl = ((void*)0), *next;

 for (i = 0; i < nr_pages; i++) {
  next = alloc_pl(GFP_KERNEL);
  if (!next) {
   if (pl)
    drop_pages(pl);
   return -ENOMEM;
  }
  next->next = pl;
  pl = next;
 }

 kc->nr_reserved_pages += nr_pages;
 kcopyd_put_pages(kc, pl);

 return 0;
}
