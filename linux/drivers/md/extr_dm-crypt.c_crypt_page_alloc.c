
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void page ;
struct crypt_config {int n_allocated_pages; } ;
typedef int gfp_t ;


 int __GFP_NORETRY ;
 void* alloc_page (int) ;
 int dm_crypt_pages_per_client ;
 scalar_t__ likely (int) ;
 int percpu_counter_add (int *,int) ;
 scalar_t__ percpu_counter_compare (int *,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void *crypt_page_alloc(gfp_t gfp_mask, void *pool_data)
{
 struct crypt_config *cc = pool_data;
 struct page *page;

 if (unlikely(percpu_counter_compare(&cc->n_allocated_pages, dm_crypt_pages_per_client) >= 0) &&
     likely(gfp_mask & __GFP_NORETRY))
  return ((void*)0);

 page = alloc_page(gfp_mask);
 if (likely(page != ((void*)0)))
  percpu_counter_add(&cc->n_allocated_pages, 1);

 return page;
}
