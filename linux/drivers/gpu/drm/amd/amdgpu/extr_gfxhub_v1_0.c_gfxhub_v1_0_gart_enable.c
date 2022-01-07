
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vram_start; int vram_end; } ;
struct amdgpu_device {TYPE_1__ gmc; } ;


 int GC ;
 int WREG32_SOC15_RLC (int ,int ,int ,int) ;
 scalar_t__ amdgpu_sriov_vf (struct amdgpu_device*) ;
 int gfxhub_v1_0_disable_identity_aperture (struct amdgpu_device*) ;
 int gfxhub_v1_0_enable_system_domain (struct amdgpu_device*) ;
 int gfxhub_v1_0_init_cache_regs (struct amdgpu_device*) ;
 int gfxhub_v1_0_init_gart_aperture_regs (struct amdgpu_device*) ;
 int gfxhub_v1_0_init_system_aperture_regs (struct amdgpu_device*) ;
 int gfxhub_v1_0_init_tlb_regs (struct amdgpu_device*) ;
 int gfxhub_v1_0_program_invalidation (struct amdgpu_device*) ;
 int gfxhub_v1_0_setup_vmid_config (struct amdgpu_device*) ;
 int mmMC_VM_FB_LOCATION_BASE ;
 int mmMC_VM_FB_LOCATION_TOP ;

int gfxhub_v1_0_gart_enable(struct amdgpu_device *adev)
{
 if (amdgpu_sriov_vf(adev)) {





  WREG32_SOC15_RLC(GC, 0, mmMC_VM_FB_LOCATION_BASE,
        adev->gmc.vram_start >> 24);
  WREG32_SOC15_RLC(GC, 0, mmMC_VM_FB_LOCATION_TOP,
        adev->gmc.vram_end >> 24);
 }


 gfxhub_v1_0_init_gart_aperture_regs(adev);
 gfxhub_v1_0_init_system_aperture_regs(adev);
 gfxhub_v1_0_init_tlb_regs(adev);
 gfxhub_v1_0_init_cache_regs(adev);

 gfxhub_v1_0_enable_system_domain(adev);
 gfxhub_v1_0_disable_identity_aperture(adev);
 gfxhub_v1_0_setup_vmid_config(adev);
 gfxhub_v1_0_program_invalidation(adev);

 return 0;
}
