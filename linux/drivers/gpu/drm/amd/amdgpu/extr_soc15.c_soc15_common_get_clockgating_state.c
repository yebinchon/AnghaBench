
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct amdgpu_device {TYPE_2__* df_funcs; TYPE_1__* nbio_funcs; } ;
struct TYPE_4__ {int (* get_clockgating_state ) (struct amdgpu_device*,int *) ;} ;
struct TYPE_3__ {int (* get_clockgating_state ) (struct amdgpu_device*,int *) ;} ;


 int AMD_CG_SUPPORT_DRM_LS ;
 int AMD_CG_SUPPORT_DRM_MGCG ;
 int AMD_CG_SUPPORT_HDP_LS ;
 int AMD_CG_SUPPORT_ROM_MGCG ;
 int CGTT_ROM_CLK_CTRL0__SOFT_OVERRIDE0_MASK ;
 int HDP ;
 int HDP_MEM_POWER_LS__LS_ENABLE_MASK ;
 int MP0 ;
 int RREG32 (int ) ;
 int SMUIO ;
 int SOC15_REG_OFFSET (int ,int ,int ) ;
 scalar_t__ amdgpu_sriov_vf (struct amdgpu_device*) ;
 int mmCGTT_ROM_CLK_CTRL0 ;
 int mmHDP_MEM_POWER_LS ;
 int mmMP0_MISC_CGTT_CTRL0 ;
 int mmMP0_MISC_LIGHT_SLEEP_CTRL ;
 int stub1 (struct amdgpu_device*,int *) ;
 int stub2 (struct amdgpu_device*,int *) ;

__attribute__((used)) static void soc15_common_get_clockgating_state(void *handle, u32 *flags)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 int data;

 if (amdgpu_sriov_vf(adev))
  *flags = 0;

 adev->nbio_funcs->get_clockgating_state(adev, flags);


 data = RREG32(SOC15_REG_OFFSET(HDP, 0, mmHDP_MEM_POWER_LS));
 if (data & HDP_MEM_POWER_LS__LS_ENABLE_MASK)
  *flags |= AMD_CG_SUPPORT_HDP_LS;


 data = RREG32(SOC15_REG_OFFSET(MP0, 0, mmMP0_MISC_CGTT_CTRL0));
 if (!(data & 0x01000000))
  *flags |= AMD_CG_SUPPORT_DRM_MGCG;


 data = RREG32(SOC15_REG_OFFSET(MP0, 0, mmMP0_MISC_LIGHT_SLEEP_CTRL));
 if (data & 0x1)
  *flags |= AMD_CG_SUPPORT_DRM_LS;


 data = RREG32(SOC15_REG_OFFSET(SMUIO, 0, mmCGTT_ROM_CLK_CTRL0));
 if (!(data & CGTT_ROM_CLK_CTRL0__SOFT_OVERRIDE0_MASK))
  *flags |= AMD_CG_SUPPORT_ROM_MGCG;

 adev->df_funcs->get_clockgating_state(adev, flags);
}
