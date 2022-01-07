
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dummy; } ;


 int AMD_CG_SUPPORT_BIF_LS ;
 int AMD_CG_SUPPORT_HDP_LS ;
 int AMD_CG_SUPPORT_HDP_MGCG ;
 int AMD_CG_SUPPORT_ROM_MGCG ;
 int CGTT_ROM_CLK_CTRL0__SOFT_OVERRIDE0_MASK ;
 int HDP_HOST_PATH_CNTL__CLOCK_GATING_DIS_MASK ;
 int HDP_MEM_POWER_LS__LS_ENABLE_MASK ;
 int PCIE_CNTL2__SLV_MEM_LS_EN_MASK ;
 int RREG32 (int ) ;
 int RREG32_PCIE (int ) ;
 int RREG32_SMC (int ) ;
 scalar_t__ amdgpu_sriov_vf (struct amdgpu_device*) ;
 int ixCGTT_ROM_CLK_CTRL0 ;
 int ixPCIE_CNTL2 ;
 int mmHDP_HOST_PATH_CNTL ;
 int mmHDP_MEM_POWER_LS ;

__attribute__((used)) static void vi_common_get_clockgating_state(void *handle, u32 *flags)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 int data;

 if (amdgpu_sriov_vf(adev))
  *flags = 0;


 data = RREG32_PCIE(ixPCIE_CNTL2);
 if (data & PCIE_CNTL2__SLV_MEM_LS_EN_MASK)
  *flags |= AMD_CG_SUPPORT_BIF_LS;


 data = RREG32(mmHDP_MEM_POWER_LS);
 if (data & HDP_MEM_POWER_LS__LS_ENABLE_MASK)
  *flags |= AMD_CG_SUPPORT_HDP_LS;


 data = RREG32(mmHDP_HOST_PATH_CNTL);
 if (!(data & HDP_HOST_PATH_CNTL__CLOCK_GATING_DIS_MASK))
  *flags |= AMD_CG_SUPPORT_HDP_MGCG;


 data = RREG32_SMC(ixCGTT_ROM_CLK_CTRL0);
 if (!(data & CGTT_ROM_CLK_CTRL0__SOFT_OVERRIDE0_MASK))
  *flags |= AMD_CG_SUPPORT_ROM_MGCG;
}
