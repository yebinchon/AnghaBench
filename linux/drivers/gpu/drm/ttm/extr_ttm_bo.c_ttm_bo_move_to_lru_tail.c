
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ttm_lru_bulk_move {int * swap; int * vram; int * tt; } ;
struct TYPE_4__ {int placement; int mem_type; } ;
struct TYPE_6__ {int resv; } ;
struct ttm_buffer_object {size_t priority; TYPE_2__* ttm; TYPE_1__ mem; TYPE_3__ base; } ;
struct TYPE_5__ {int page_flags; } ;


 int TTM_PAGE_FLAG_SG ;
 int TTM_PAGE_FLAG_SWAPPED ;
 int TTM_PL_FLAG_NO_EVICT ;


 int dma_resv_assert_held (int ) ;
 int ttm_bo_add_to_lru (struct ttm_buffer_object*) ;
 int ttm_bo_bulk_move_set_pos (int *,struct ttm_buffer_object*) ;
 int ttm_bo_del_from_lru (struct ttm_buffer_object*) ;

void ttm_bo_move_to_lru_tail(struct ttm_buffer_object *bo,
        struct ttm_lru_bulk_move *bulk)
{
 dma_resv_assert_held(bo->base.resv);

 ttm_bo_del_from_lru(bo);
 ttm_bo_add_to_lru(bo);

 if (bulk && !(bo->mem.placement & TTM_PL_FLAG_NO_EVICT)) {
  switch (bo->mem.mem_type) {
  case 129:
   ttm_bo_bulk_move_set_pos(&bulk->tt[bo->priority], bo);
   break;

  case 128:
   ttm_bo_bulk_move_set_pos(&bulk->vram[bo->priority], bo);
   break;
  }
  if (bo->ttm && !(bo->ttm->page_flags &
     (TTM_PAGE_FLAG_SG | TTM_PAGE_FLAG_SWAPPED)))
   ttm_bo_bulk_move_set_pos(&bulk->swap[bo->priority], bo);
 }
}
