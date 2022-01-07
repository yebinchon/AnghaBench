
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct amdgpu_device {scalar_t__ family; } ;
struct TYPE_2__ {int bdev; } ;
struct amdgpu_bo {int tiling_flags; TYPE_1__ tbo; } ;


 scalar_t__ AMDGPU_FAMILY_CZ ;
 int AMDGPU_TILING_GET (int ,int ) ;
 int EINVAL ;
 int TILE_SPLIT ;
 struct amdgpu_device* amdgpu_ttm_adev (int ) ;

int amdgpu_bo_set_tiling_flags(struct amdgpu_bo *bo, u64 tiling_flags)
{
 struct amdgpu_device *adev = amdgpu_ttm_adev(bo->tbo.bdev);

 if (adev->family <= AMDGPU_FAMILY_CZ &&
     AMDGPU_TILING_GET(tiling_flags, TILE_SPLIT) > 6)
  return -EINVAL;

 bo->tiling_flags = tiling_flags;
 return 0;
}
