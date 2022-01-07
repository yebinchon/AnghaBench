
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ttm_operation_ctx {int member_0; int member_1; } ;
struct TYPE_4__ {int num_placement; } ;
struct drm_gem_vram_object {int bo; scalar_t__ pin_count; TYPE_2__ placement; TYPE_1__* placements; } ;
struct TYPE_3__ {int flags; } ;


 int TTM_PL_FLAG_NO_EVICT ;
 int drm_gem_vram_placement (struct drm_gem_vram_object*,unsigned long) ;
 int ttm_bo_reserve (int *,int,int,int *) ;
 int ttm_bo_unreserve (int *) ;
 int ttm_bo_validate (int *,TYPE_2__*,struct ttm_operation_ctx*) ;

int drm_gem_vram_pin(struct drm_gem_vram_object *gbo, unsigned long pl_flag)
{
 int i, ret;
 struct ttm_operation_ctx ctx = { 0, 0 };

 ret = ttm_bo_reserve(&gbo->bo, 1, 0, ((void*)0));
 if (ret < 0)
  return ret;

 if (gbo->pin_count)
  goto out;

 if (pl_flag)
  drm_gem_vram_placement(gbo, pl_flag);

 for (i = 0; i < gbo->placement.num_placement; ++i)
  gbo->placements[i].flags |= TTM_PL_FLAG_NO_EVICT;

 ret = ttm_bo_validate(&gbo->bo, &gbo->placement, &ctx);
 if (ret < 0)
  goto err_ttm_bo_unreserve;

out:
 ++gbo->pin_count;
 ttm_bo_unreserve(&gbo->bo);

 return 0;

err_ttm_bo_unreserve:
 ttm_bo_unreserve(&gbo->bo);
 return ret;
}
