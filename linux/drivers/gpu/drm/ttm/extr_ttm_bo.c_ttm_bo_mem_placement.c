
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct ttm_place {int flags; } ;
struct ttm_operation_ctx {int dummy; } ;
struct ttm_mem_type_manager {int use_type; int has_type; } ;
struct ttm_mem_reg {size_t mem_type; size_t placement; } ;
struct TYPE_3__ {size_t mem_type; int placement; } ;
struct ttm_buffer_object {struct ttm_bo_device* bdev; int lru; TYPE_1__ mem; } ;
struct ttm_bo_device {TYPE_2__* glob; struct ttm_mem_type_manager* man; } ;
struct TYPE_4__ {int lru_lock; } ;


 int EBUSY ;
 int TTM_PL_MASK_MEMTYPE ;
 size_t TTM_PL_SYSTEM ;
 int list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int ttm_bo_add_mem_to_lru (struct ttm_buffer_object*,struct ttm_mem_reg*) ;
 int ttm_bo_del_from_lru (struct ttm_buffer_object*) ;
 int ttm_bo_mt_compatible (struct ttm_mem_type_manager*,size_t,struct ttm_place const*,size_t*) ;
 size_t ttm_bo_select_caching (struct ttm_mem_type_manager*,int ,size_t) ;
 int ttm_flag_masked (size_t*,int ,int ) ;
 int ttm_mem_type_from_place (struct ttm_place const*,size_t*) ;

__attribute__((used)) static int ttm_bo_mem_placement(struct ttm_buffer_object *bo,
    const struct ttm_place *place,
    struct ttm_mem_reg *mem,
    struct ttm_operation_ctx *ctx)
{
 struct ttm_bo_device *bdev = bo->bdev;
 uint32_t mem_type = TTM_PL_SYSTEM;
 struct ttm_mem_type_manager *man;
 uint32_t cur_flags = 0;
 int ret;

 ret = ttm_mem_type_from_place(place, &mem_type);
 if (ret)
  return ret;

 man = &bdev->man[mem_type];
 if (!man->has_type || !man->use_type)
  return -EBUSY;

 if (!ttm_bo_mt_compatible(man, mem_type, place, &cur_flags))
  return -EBUSY;

 cur_flags = ttm_bo_select_caching(man, bo->mem.placement, cur_flags);




 ttm_flag_masked(&cur_flags, place->flags, ~TTM_PL_MASK_MEMTYPE);

 mem->mem_type = mem_type;
 mem->placement = cur_flags;

 if (bo->mem.mem_type < mem_type && !list_empty(&bo->lru)) {
  spin_lock(&bo->bdev->glob->lru_lock);
  ttm_bo_del_from_lru(bo);
  ttm_bo_add_mem_to_lru(bo, mem);
  spin_unlock(&bo->bdev->glob->lru_lock);
 }

 return 0;
}
