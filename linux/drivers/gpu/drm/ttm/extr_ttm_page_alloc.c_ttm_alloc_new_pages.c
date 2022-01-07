
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int lru; } ;
struct list_head {int dummy; } ;
typedef int gfp_t ;
typedef enum ttm_caching_state { ____Placeholder_ttm_caching_state } ttm_caching_state ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ NUM_PAGES_TO_ALLOC ;
 scalar_t__ PageHighMem (struct page*) ;
 struct page* alloc_pages (int ,unsigned int) ;
 int kfree (struct page**) ;
 struct page** kmalloc_array (unsigned int,int,int ) ;
 int list_add (int *,struct list_head*) ;
 unsigned int min (unsigned int,unsigned int) ;
 int pr_debug (char*,...) ;
 int ttm_handle_caching_state_failure (struct list_head*,int,int,struct page**,unsigned int) ;
 int ttm_set_pages_caching (struct page**,int,unsigned int) ;

__attribute__((used)) static int ttm_alloc_new_pages(struct list_head *pages, gfp_t gfp_flags,
          int ttm_flags, enum ttm_caching_state cstate,
          unsigned count, unsigned order)
{
 struct page **caching_array;
 struct page *p;
 int r = 0;
 unsigned i, j, cpages;
 unsigned npages = 1 << order;
 unsigned max_cpages = min(count << order, (unsigned)NUM_PAGES_TO_ALLOC);


 caching_array = kmalloc_array(max_cpages, sizeof(struct page *),
          GFP_KERNEL);

 if (!caching_array) {
  pr_debug("Unable to allocate table for new pages\n");
  return -ENOMEM;
 }

 for (i = 0, cpages = 0; i < count; ++i) {
  p = alloc_pages(gfp_flags, order);

  if (!p) {
   pr_debug("Unable to get page %u\n", i);



   if (cpages) {
    r = ttm_set_pages_caching(caching_array,
         cstate, cpages);
    if (r)
     ttm_handle_caching_state_failure(pages,
      ttm_flags, cstate,
      caching_array, cpages);
   }
   r = -ENOMEM;
   goto out;
  }

  list_add(&p->lru, pages);
  for (j = 0; j < npages; ++j) {
   caching_array[cpages++] = p++;
   if (cpages == max_cpages) {

    r = ttm_set_pages_caching(caching_array,
      cstate, cpages);
    if (r) {
     ttm_handle_caching_state_failure(pages,
      ttm_flags, cstate,
      caching_array, cpages);
     goto out;
    }
    cpages = 0;
   }
  }
 }

 if (cpages) {
  r = ttm_set_pages_caching(caching_array, cstate, cpages);
  if (r)
   ttm_handle_caching_state_failure(pages,
     ttm_flags, cstate,
     caching_array, cpages);
 }
out:
 kfree(caching_array);

 return r;
}
