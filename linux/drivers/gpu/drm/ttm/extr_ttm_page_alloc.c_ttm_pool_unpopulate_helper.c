
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ttm_tt {int state; int caching_state; int page_flags; int num_pages; int * pages; TYPE_2__* bdev; } ;
struct ttm_mem_global {int dummy; } ;
struct TYPE_4__ {TYPE_1__* glob; } ;
struct TYPE_3__ {struct ttm_mem_global* mem_glob; } ;


 int PAGE_SIZE ;
 int tt_unpopulated ;
 int ttm_mem_global_free_page (struct ttm_mem_global*,int ,int ) ;
 int ttm_put_pages (int *,int ,int ,int ) ;

__attribute__((used)) static void
ttm_pool_unpopulate_helper(struct ttm_tt *ttm, unsigned mem_count_update)
{
 struct ttm_mem_global *mem_glob = ttm->bdev->glob->mem_glob;
 unsigned i;

 if (mem_count_update == 0)
  goto put_pages;

 for (i = 0; i < mem_count_update; ++i) {
  if (!ttm->pages[i])
   continue;

  ttm_mem_global_free_page(mem_glob, ttm->pages[i], PAGE_SIZE);
 }

put_pages:
 ttm_put_pages(ttm->pages, ttm->num_pages, ttm->page_flags,
        ttm->caching_state);
 ttm->state = tt_unpopulated;
}
