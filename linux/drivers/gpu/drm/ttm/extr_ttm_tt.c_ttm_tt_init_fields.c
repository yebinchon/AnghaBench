
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ttm_tt {int sg; int * swap_storage; int state; int page_flags; int caching_state; int num_pages; int bdev; } ;
struct ttm_buffer_object {int sg; int num_pages; int bdev; } ;


 int tt_cached ;
 int tt_unpopulated ;

void ttm_tt_init_fields(struct ttm_tt *ttm, struct ttm_buffer_object *bo,
   uint32_t page_flags)
{
 ttm->bdev = bo->bdev;
 ttm->num_pages = bo->num_pages;
 ttm->caching_state = tt_cached;
 ttm->page_flags = page_flags;
 ttm->state = tt_unpopulated;
 ttm->swap_storage = ((void*)0);
 ttm->sg = bo->sg;
}
