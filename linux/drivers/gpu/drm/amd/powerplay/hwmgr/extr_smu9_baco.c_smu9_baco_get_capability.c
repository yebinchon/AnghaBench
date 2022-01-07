
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int platformCaps; } ;
struct pp_hwmgr {TYPE_1__ platform_descriptor; scalar_t__ adev; } ;
struct amdgpu_device {int dummy; } ;


 int NBIF ;
 int PHM_PlatformCaps_BACO ;
 int RCC_BIF_STRAP0__STRAP_PX_CAPABLE_MASK ;
 int RREG32 (int) ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int WREG32 (int,int) ;
 int mmRCC_BIF_STRAP0 ;
 int phm_cap_enabled (int ,int ) ;

int smu9_baco_get_capability(struct pp_hwmgr *hwmgr, bool *cap)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)(hwmgr->adev);
 uint32_t reg, data;

 *cap = 0;
 if (!phm_cap_enabled(hwmgr->platform_descriptor.platformCaps, PHM_PlatformCaps_BACO))
  return 0;

 WREG32(0x12074, 0xFFF0003B);
 data = RREG32(0x12075);

 if (data == 0x1) {
  reg = RREG32_SOC15(NBIF, 0, mmRCC_BIF_STRAP0);

  if (reg & RCC_BIF_STRAP0__STRAP_PX_CAPABLE_MASK)
   *cap = 1;
 }

 return 0;
}
