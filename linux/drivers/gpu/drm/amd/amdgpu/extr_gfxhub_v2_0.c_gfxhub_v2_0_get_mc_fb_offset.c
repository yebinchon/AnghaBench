
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct amdgpu_device {int dummy; } ;


 int GC ;
 scalar_t__ RREG32_SOC15 (int ,int ,int ) ;
 int mmGCMC_VM_FB_OFFSET ;

u64 gfxhub_v2_0_get_mc_fb_offset(struct amdgpu_device *adev)
{
 return (u64)RREG32_SOC15(GC, 0, mmGCMC_VM_FB_OFFSET) << 24;
}
