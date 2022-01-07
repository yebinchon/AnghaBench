
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * fw; int vm_fault_info; } ;
struct amdgpu_device {TYPE_1__ gmc; } ;


 int amdgpu_bo_fini (struct amdgpu_device*) ;
 int amdgpu_gart_fini (struct amdgpu_device*) ;
 int amdgpu_gart_table_vram_free (struct amdgpu_device*) ;
 int amdgpu_gem_force_release (struct amdgpu_device*) ;
 int amdgpu_vm_manager_fini (struct amdgpu_device*) ;
 int kfree (int ) ;
 int release_firmware (int *) ;

__attribute__((used)) static int gmc_v8_0_sw_fini(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 amdgpu_gem_force_release(adev);
 amdgpu_vm_manager_fini(adev);
 kfree(adev->gmc.vm_fault_info);
 amdgpu_gart_table_vram_free(adev);
 amdgpu_bo_fini(adev);
 amdgpu_gart_fini(adev);
 release_firmware(adev->gmc.fw);
 adev->gmc.fw = ((void*)0);

 return 0;
}
