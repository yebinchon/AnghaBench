
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int amdgpu_bo_fini (struct amdgpu_device*) ;
 int amdgpu_gem_force_release (struct amdgpu_device*) ;
 int amdgpu_vm_manager_fini (struct amdgpu_device*) ;
 int gmc_v10_0_gart_fini (struct amdgpu_device*) ;

__attribute__((used)) static int gmc_v10_0_sw_fini(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 amdgpu_vm_manager_fini(adev);
 gmc_v10_0_gart_fini(adev);
 amdgpu_gem_force_release(adev);
 amdgpu_bo_fini(adev);

 return 0;
}
