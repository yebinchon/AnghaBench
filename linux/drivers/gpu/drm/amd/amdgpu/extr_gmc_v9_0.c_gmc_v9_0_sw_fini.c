
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ras_common_if {int dummy; } ;
struct ras_ih_if {struct ras_common_if head; } ;
struct TYPE_2__ {struct ras_common_if* mmhub_ras_if; struct ras_common_if* umc_ras_if; } ;
struct amdgpu_device {int stolen_vga_memory; TYPE_1__ gmc; } ;


 int AMDGPU_RAS_BLOCK__MMHUB ;
 int AMDGPU_RAS_BLOCK__UMC ;
 int amdgpu_bo_fini (struct amdgpu_device*) ;
 int amdgpu_bo_free_kernel (int *,int *,void**) ;
 int amdgpu_gart_fini (struct amdgpu_device*) ;
 int amdgpu_gart_table_vram_free (struct amdgpu_device*) ;
 int amdgpu_gem_force_release (struct amdgpu_device*) ;
 int amdgpu_ras_debugfs_remove (struct amdgpu_device*,struct ras_common_if*) ;
 int amdgpu_ras_feature_enable (struct amdgpu_device*,struct ras_common_if*,int ) ;
 int amdgpu_ras_interrupt_remove_handler (struct amdgpu_device*,struct ras_ih_if*) ;
 scalar_t__ amdgpu_ras_is_supported (struct amdgpu_device*,int ) ;
 int amdgpu_ras_sysfs_remove (struct amdgpu_device*,struct ras_common_if*) ;
 int amdgpu_vm_manager_fini (struct amdgpu_device*) ;
 scalar_t__ gmc_v9_0_keep_stolen_memory (struct amdgpu_device*) ;
 int kfree (struct ras_common_if*) ;

__attribute__((used)) static int gmc_v9_0_sw_fini(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 void *stolen_vga_buf;

 if (amdgpu_ras_is_supported(adev, AMDGPU_RAS_BLOCK__UMC) &&
   adev->gmc.umc_ras_if) {
  struct ras_common_if *ras_if = adev->gmc.umc_ras_if;
  struct ras_ih_if ih_info = {
   .head = *ras_if,
  };


  amdgpu_ras_debugfs_remove(adev, ras_if);
  amdgpu_ras_sysfs_remove(adev, ras_if);

  amdgpu_ras_interrupt_remove_handler(adev, &ih_info);
  amdgpu_ras_feature_enable(adev, ras_if, 0);
  kfree(ras_if);
 }

 if (amdgpu_ras_is_supported(adev, AMDGPU_RAS_BLOCK__MMHUB) &&
   adev->gmc.mmhub_ras_if) {
  struct ras_common_if *ras_if = adev->gmc.mmhub_ras_if;


  amdgpu_ras_debugfs_remove(adev, ras_if);
  amdgpu_ras_sysfs_remove(adev, ras_if);
  amdgpu_ras_feature_enable(adev, ras_if, 0);
  kfree(ras_if);
 }

 amdgpu_gem_force_release(adev);
 amdgpu_vm_manager_fini(adev);

 if (gmc_v9_0_keep_stolen_memory(adev))
  amdgpu_bo_free_kernel(&adev->stolen_vga_memory, ((void*)0), &stolen_vga_buf);

 amdgpu_gart_table_vram_free(adev);
 amdgpu_bo_fini(adev);
 amdgpu_gart_fini(adev);

 return 0;
}
