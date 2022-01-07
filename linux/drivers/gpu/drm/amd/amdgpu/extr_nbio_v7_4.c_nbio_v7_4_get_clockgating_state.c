
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dummy; } ;


 int AMD_CG_SUPPORT_BIF_LS ;
 int AMD_CG_SUPPORT_BIF_MGCG ;
 int CPM_CONTROL__LCLK_DYN_GATE_ENABLE_MASK ;
 int PCIE_CNTL2__SLV_MEM_LS_EN_MASK ;
 int RREG32_PCIE (int ) ;
 int smnCPM_CONTROL ;
 int smnPCIE_CNTL2 ;

__attribute__((used)) static void nbio_v7_4_get_clockgating_state(struct amdgpu_device *adev,
         u32 *flags)
{
 int data;


 data = RREG32_PCIE(smnCPM_CONTROL);
 if (data & CPM_CONTROL__LCLK_DYN_GATE_ENABLE_MASK)
  *flags |= AMD_CG_SUPPORT_BIF_MGCG;


 data = RREG32_PCIE(smnPCIE_CNTL2);
 if (data & PCIE_CNTL2__SLV_MEM_LS_EN_MASK)
  *flags |= AMD_CG_SUPPORT_BIF_LS;
}
