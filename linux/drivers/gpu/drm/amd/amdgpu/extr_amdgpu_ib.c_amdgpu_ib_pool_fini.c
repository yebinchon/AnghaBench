
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int ib_pool_ready; int ring_tmp_bo; } ;


 int amdgpu_sa_bo_manager_fini (struct amdgpu_device*,int *) ;

void amdgpu_ib_pool_fini(struct amdgpu_device *adev)
{
 if (adev->ib_pool_ready) {
  amdgpu_sa_bo_manager_fini(adev, &adev->ring_tmp_bo);
  adev->ib_pool_ready = 0;
 }
}
