
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * ptr; int * bo; } ;
struct amdgpu_device {TYPE_1__ gart; } ;


 int amdgpu_bo_kunmap (int *) ;
 int amdgpu_bo_reserve (int *,int) ;
 int amdgpu_bo_unpin (int *) ;
 int amdgpu_bo_unreserve (int *) ;
 scalar_t__ likely (int) ;

void amdgpu_gart_table_vram_unpin(struct amdgpu_device *adev)
{
 int r;

 if (adev->gart.bo == ((void*)0)) {
  return;
 }
 r = amdgpu_bo_reserve(adev->gart.bo, 1);
 if (likely(r == 0)) {
  amdgpu_bo_kunmap(adev->gart.bo);
  amdgpu_bo_unpin(adev->gart.bo);
  amdgpu_bo_unreserve(adev->gart.bo);
  adev->gart.ptr = ((void*)0);
 }
}
