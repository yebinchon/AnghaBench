
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_device {int cg_flags; } ;


 int AMD_CG_SUPPORT_BIF_LS ;
 int PCIE_CNTL2__MST_MEM_LS_EN_MASK ;
 int PCIE_CNTL2__REPLAY_MEM_LS_EN_MASK ;
 int PCIE_CNTL2__SLV_MEM_LS_EN_MASK ;
 int RREG32_PCIE (int ) ;
 int WREG32_PCIE (int ,int) ;
 int ixPCIE_CNTL2 ;

__attribute__((used)) static void vi_update_bif_medium_grain_light_sleep(struct amdgpu_device *adev,
         bool enable)
{
 uint32_t temp, data;

 temp = data = RREG32_PCIE(ixPCIE_CNTL2);

 if (enable && (adev->cg_flags & AMD_CG_SUPPORT_BIF_LS))
  data |= PCIE_CNTL2__SLV_MEM_LS_EN_MASK |
    PCIE_CNTL2__MST_MEM_LS_EN_MASK |
    PCIE_CNTL2__REPLAY_MEM_LS_EN_MASK;
 else
  data &= ~(PCIE_CNTL2__SLV_MEM_LS_EN_MASK |
    PCIE_CNTL2__MST_MEM_LS_EN_MASK |
    PCIE_CNTL2__REPLAY_MEM_LS_EN_MASK);

 if (temp != data)
  WREG32_PCIE(ixPCIE_CNTL2, data);
}
