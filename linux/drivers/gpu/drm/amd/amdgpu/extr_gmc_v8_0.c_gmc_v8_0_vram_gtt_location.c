
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct amdgpu_gmc {int dummy; } ;
struct amdgpu_device {int dummy; } ;


 int RREG32 (int ) ;
 int amdgpu_gmc_gart_location (struct amdgpu_device*,struct amdgpu_gmc*) ;
 int amdgpu_gmc_vram_location (struct amdgpu_device*,struct amdgpu_gmc*,int) ;
 int amdgpu_sriov_vf (struct amdgpu_device*) ;
 int mmMC_VM_FB_LOCATION ;

__attribute__((used)) static void gmc_v8_0_vram_gtt_location(struct amdgpu_device *adev,
           struct amdgpu_gmc *mc)
{
 u64 base = 0;

 if (!amdgpu_sriov_vf(adev))
  base = RREG32(mmMC_VM_FB_LOCATION) & 0xFFFF;
 base <<= 24;

 amdgpu_gmc_vram_location(adev, mc, base);
 amdgpu_gmc_gart_location(adev, mc);
}
