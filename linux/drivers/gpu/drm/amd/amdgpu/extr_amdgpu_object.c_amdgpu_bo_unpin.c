
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ttm_operation_ctx {int member_0; int member_1; } ;
struct amdgpu_device {int dev; } ;
struct TYPE_6__ {int num_placement; } ;
struct TYPE_5__ {int bdev; } ;
struct amdgpu_bo {TYPE_3__ placement; TYPE_2__ tbo; TYPE_1__* placements; scalar_t__ pin_count; } ;
struct TYPE_4__ {int flags; scalar_t__ lpfn; } ;


 int TTM_PL_FLAG_NO_EVICT ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int amdgpu_bo_subtract_pin_size (struct amdgpu_bo*) ;
 struct amdgpu_device* amdgpu_ttm_adev (int ) ;
 int dev_err (int ,char*,struct amdgpu_bo*) ;
 int dev_warn (int ,char*,struct amdgpu_bo*) ;
 int ttm_bo_validate (TYPE_2__*,TYPE_3__*,struct ttm_operation_ctx*) ;
 scalar_t__ unlikely (int) ;

int amdgpu_bo_unpin(struct amdgpu_bo *bo)
{
 struct amdgpu_device *adev = amdgpu_ttm_adev(bo->tbo.bdev);
 struct ttm_operation_ctx ctx = { 0, 0 };
 int r, i;

 if (WARN_ON_ONCE(!bo->pin_count)) {
  dev_warn(adev->dev, "%p unpin not necessary\n", bo);
  return 0;
 }
 bo->pin_count--;
 if (bo->pin_count)
  return 0;

 amdgpu_bo_subtract_pin_size(bo);

 for (i = 0; i < bo->placement.num_placement; i++) {
  bo->placements[i].lpfn = 0;
  bo->placements[i].flags &= ~TTM_PL_FLAG_NO_EVICT;
 }
 r = ttm_bo_validate(&bo->tbo, &bo->placement, &ctx);
 if (unlikely(r))
  dev_err(adev->dev, "%p validate failed for unpin\n", bo);

 return r;
}
