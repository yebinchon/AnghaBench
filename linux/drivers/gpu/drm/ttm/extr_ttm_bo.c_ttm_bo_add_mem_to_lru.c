
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ttm_mem_type_manager {int flags; int * lru; } ;
struct ttm_mem_reg {int placement; size_t mem_type; } ;
struct TYPE_4__ {int resv; } ;
struct ttm_buffer_object {size_t priority; int list_kref; int swap; TYPE_2__* ttm; int lru; TYPE_1__ base; struct ttm_bo_device* bdev; } ;
struct ttm_bo_device {TYPE_3__* glob; struct ttm_mem_type_manager* man; } ;
struct TYPE_6__ {int * swap_lru; } ;
struct TYPE_5__ {int page_flags; } ;


 int TTM_MEMTYPE_FLAG_FIXED ;
 int TTM_PAGE_FLAG_SG ;
 int TTM_PAGE_FLAG_SWAPPED ;
 int TTM_PL_FLAG_NO_EVICT ;
 int dma_resv_assert_held (int ) ;
 int kref_get (int *) ;
 int list_add_tail (int *,int *) ;
 int list_empty (int *) ;

__attribute__((used)) static void ttm_bo_add_mem_to_lru(struct ttm_buffer_object *bo,
      struct ttm_mem_reg *mem)
{
 struct ttm_bo_device *bdev = bo->bdev;
 struct ttm_mem_type_manager *man;

 dma_resv_assert_held(bo->base.resv);

 if (!list_empty(&bo->lru))
  return;

 if (mem->placement & TTM_PL_FLAG_NO_EVICT)
  return;

 man = &bdev->man[mem->mem_type];
 list_add_tail(&bo->lru, &man->lru[bo->priority]);
 kref_get(&bo->list_kref);

 if (!(man->flags & TTM_MEMTYPE_FLAG_FIXED) && bo->ttm &&
     !(bo->ttm->page_flags & (TTM_PAGE_FLAG_SG |
         TTM_PAGE_FLAG_SWAPPED))) {
  list_add_tail(&bo->swap, &bdev->glob->swap_lru[bo->priority]);
  kref_get(&bo->list_kref);
 }
}
