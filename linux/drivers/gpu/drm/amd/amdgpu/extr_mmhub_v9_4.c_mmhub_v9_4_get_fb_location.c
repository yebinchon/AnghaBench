
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int fb_start; int fb_end; } ;
struct amdgpu_device {TYPE_1__ gmc; } ;


 int MMHUB ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int VMSHAREDVC0_MC_VM_FB_LOCATION_BASE__FB_BASE_MASK ;
 int VMSHAREDVC0_MC_VM_FB_LOCATION_TOP__FB_TOP_MASK ;
 int mmVMSHAREDVC0_MC_VM_FB_LOCATION_BASE ;
 int mmVMSHAREDVC0_MC_VM_FB_LOCATION_TOP ;

u64 mmhub_v9_4_get_fb_location(struct amdgpu_device *adev)
{

 u64 base = RREG32_SOC15(MMHUB, 0, mmVMSHAREDVC0_MC_VM_FB_LOCATION_BASE);
 u64 top = RREG32_SOC15(MMHUB, 0, mmVMSHAREDVC0_MC_VM_FB_LOCATION_TOP);

 base &= VMSHAREDVC0_MC_VM_FB_LOCATION_BASE__FB_BASE_MASK;
 base <<= 24;

 top &= VMSHAREDVC0_MC_VM_FB_LOCATION_TOP__FB_TOP_MASK;
 top <<= 24;

 adev->gmc.fb_start = base;
 adev->gmc.fb_end = top;

 return base;
}
