
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu_context {int dummy; } ;
struct amdgpu_device {int in_suspend; struct smu_context smu; } ;


 scalar_t__ AMD_RESET_METHOD_BACO ;
 int amdgpu_atombios_scratch_regs_engine_hung (struct amdgpu_device*,int) ;
 int amdgpu_inc_vram_lost (struct amdgpu_device*) ;
 int nv_asic_mode1_reset (struct amdgpu_device*) ;
 scalar_t__ nv_asic_reset_method (struct amdgpu_device*) ;
 int nv_gpu_pci_config_reset (struct amdgpu_device*) ;
 int smu_baco_reset (struct smu_context*) ;

__attribute__((used)) static int nv_asic_reset(struct amdgpu_device *adev)
{
 int ret = 0;
 struct smu_context *smu = &adev->smu;

 if (nv_asic_reset_method(adev) == AMD_RESET_METHOD_BACO) {
  if (!adev->in_suspend)
   amdgpu_inc_vram_lost(adev);
  ret = smu_baco_reset(smu);
 } else {
  if (!adev->in_suspend)
   amdgpu_inc_vram_lost(adev);
  ret = nv_asic_mode1_reset(adev);
 }

 return ret;
}
