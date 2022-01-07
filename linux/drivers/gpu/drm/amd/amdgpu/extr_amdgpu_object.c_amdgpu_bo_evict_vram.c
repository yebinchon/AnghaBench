
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bdev; } ;
struct amdgpu_device {int flags; TYPE_1__ mman; } ;


 int AMD_IS_APU ;
 int TTM_PL_VRAM ;
 int ttm_bo_evict_mm (int *,int ) ;

int amdgpu_bo_evict_vram(struct amdgpu_device *adev)
{


 if (adev->flags & AMD_IS_APU) {

  return 0;
 }

 return ttm_bo_evict_mm(&adev->mman.bdev, TTM_PL_VRAM);
}
