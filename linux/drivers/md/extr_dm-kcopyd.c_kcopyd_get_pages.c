
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page_list {struct page_list* next; } ;
struct dm_kcopyd_client {int nr_free_pages; struct page_list* pages; } ;


 int ENOMEM ;
 int __GFP_KSWAPD_RECLAIM ;
 int __GFP_NORETRY ;
 int __GFP_NOWARN ;
 struct page_list* alloc_pl (int) ;
 int kcopyd_put_pages (struct dm_kcopyd_client*,struct page_list*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int kcopyd_get_pages(struct dm_kcopyd_client *kc,
       unsigned int nr, struct page_list **pages)
{
 struct page_list *pl;

 *pages = ((void*)0);

 do {
  pl = alloc_pl(__GFP_NOWARN | __GFP_NORETRY | __GFP_KSWAPD_RECLAIM);
  if (unlikely(!pl)) {

   pl = kc->pages;
   if (unlikely(!pl))
    goto out_of_memory;
   kc->pages = pl->next;
   kc->nr_free_pages--;
  }
  pl->next = *pages;
  *pages = pl;
 } while (--nr);

 return 0;

out_of_memory:
 if (*pages)
  kcopyd_put_pages(kc, *pages);
 return -ENOMEM;
}
