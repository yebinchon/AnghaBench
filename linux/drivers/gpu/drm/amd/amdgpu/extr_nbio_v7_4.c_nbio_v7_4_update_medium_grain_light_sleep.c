
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
 int smnPCIE_CNTL2 ;

__attribute__((used)) static void nbio_v7_4_update_medium_grain_light_sleep(struct amdgpu_device *adev,
            bool enable)
{
 uint32_t def, data;

 def = data = RREG32_PCIE(smnPCIE_CNTL2);
 if (enable && (adev->cg_flags & AMD_CG_SUPPORT_BIF_LS)) {
  data |= (PCIE_CNTL2__SLV_MEM_LS_EN_MASK |
    PCIE_CNTL2__MST_MEM_LS_EN_MASK |
    PCIE_CNTL2__REPLAY_MEM_LS_EN_MASK);
 } else {
  data &= ~(PCIE_CNTL2__SLV_MEM_LS_EN_MASK |
     PCIE_CNTL2__MST_MEM_LS_EN_MASK |
     PCIE_CNTL2__REPLAY_MEM_LS_EN_MASK);
 }

 if (def != data)
  WREG32_PCIE(smnPCIE_CNTL2, data);
}
