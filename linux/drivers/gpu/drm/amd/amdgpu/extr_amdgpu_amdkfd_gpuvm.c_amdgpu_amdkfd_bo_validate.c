
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct ttm_operation_ctx {int member_0; int member_1; } ;
struct TYPE_2__ {int ttm; } ;
struct amdgpu_bo {int placement; TYPE_1__ tbo; } ;


 int AMDGPU_FENCE_OWNER_KFD ;
 int EINVAL ;
 scalar_t__ WARN (int ,char*) ;
 int amdgpu_bo_placement_from_domain (struct amdgpu_bo*,int ) ;
 int amdgpu_bo_sync_wait (struct amdgpu_bo*,int ,int) ;
 int amdgpu_ttm_tt_get_usermm (int ) ;
 int ttm_bo_validate (TYPE_1__*,int *,struct ttm_operation_ctx*) ;

__attribute__((used)) static int amdgpu_amdkfd_bo_validate(struct amdgpu_bo *bo, uint32_t domain,
         bool wait)
{
 struct ttm_operation_ctx ctx = { 0, 0 };
 int ret;

 if (WARN(amdgpu_ttm_tt_get_usermm(bo->tbo.ttm),
   "Called with userptr BO"))
  return -EINVAL;

 amdgpu_bo_placement_from_domain(bo, domain);

 ret = ttm_bo_validate(&bo->tbo, &bo->placement, &ctx);
 if (ret)
  goto validate_fail;
 if (wait)
  amdgpu_bo_sync_wait(bo, AMDGPU_FENCE_OWNER_KFD, 0);

validate_fail:
 return ret;
}
