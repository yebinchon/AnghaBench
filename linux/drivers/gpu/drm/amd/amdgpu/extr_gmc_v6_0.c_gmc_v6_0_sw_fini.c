
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * fw; } ;
struct amdgpu_device {TYPE_1__ gmc; } ;


 int amdgpu_bo_fini (struct amdgpu_device*) ;
 int amdgpu_gart_fini (struct amdgpu_device*) ;
 int amdgpu_gart_table_vram_free (struct amdgpu_device*) ;
 int amdgpu_gem_force_release (struct amdgpu_device*) ;
 int amdgpu_vm_manager_fini (struct amdgpu_device*) ;
 int release_firmware (int *) ;

__attribute__((used)) static int gmc_v6_0_sw_fini(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 amdgpu_gem_force_release(adev);
 amdgpu_vm_manager_fini(adev);
 amdgpu_gart_table_vram_free(adev);
 amdgpu_bo_fini(adev);
 amdgpu_gart_fini(adev);
 release_firmware(adev->gmc.fw);
 adev->gmc.fw = ((void*)0);

 return 0;
}
