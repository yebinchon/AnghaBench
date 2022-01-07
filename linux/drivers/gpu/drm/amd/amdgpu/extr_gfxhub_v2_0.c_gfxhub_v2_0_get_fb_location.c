
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct amdgpu_device {int dummy; } ;


 int GC ;
 int GCMC_VM_FB_LOCATION_BASE__FB_BASE_MASK ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int mmGCMC_VM_FB_LOCATION_BASE ;

u64 gfxhub_v2_0_get_fb_location(struct amdgpu_device *adev)
{
 u64 base = RREG32_SOC15(GC, 0, mmGCMC_VM_FB_LOCATION_BASE);

 base &= GCMC_VM_FB_LOCATION_BASE__FB_BASE_MASK;
 base <<= 24;

 return base;
}
