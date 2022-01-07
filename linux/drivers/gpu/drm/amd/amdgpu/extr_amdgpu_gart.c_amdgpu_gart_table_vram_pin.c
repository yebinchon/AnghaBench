
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bo; int ptr; } ;
struct amdgpu_device {TYPE_1__ gart; } ;


 int AMDGPU_GEM_DOMAIN_VRAM ;
 int amdgpu_bo_kmap (int ,int *) ;
 int amdgpu_bo_pin (int ,int ) ;
 int amdgpu_bo_reserve (int ,int) ;
 int amdgpu_bo_unpin (int ) ;
 int amdgpu_bo_unreserve (int ) ;
 scalar_t__ unlikely (int) ;

int amdgpu_gart_table_vram_pin(struct amdgpu_device *adev)
{
 int r;

 r = amdgpu_bo_reserve(adev->gart.bo, 0);
 if (unlikely(r != 0))
  return r;
 r = amdgpu_bo_pin(adev->gart.bo, AMDGPU_GEM_DOMAIN_VRAM);
 if (r) {
  amdgpu_bo_unreserve(adev->gart.bo);
  return r;
 }
 r = amdgpu_bo_kmap(adev->gart.bo, &adev->gart.ptr);
 if (r)
  amdgpu_bo_unpin(adev->gart.bo);
 amdgpu_bo_unreserve(adev->gart.bo);
 return r;
}
