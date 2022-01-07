
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_device {int cg_flags; } ;


 int AMD_CG_SUPPORT_BIF_MGCG ;
 int CPM_CONTROL__LCLK_DYN_GATE_ENABLE_MASK ;
 int CPM_CONTROL__REFCLK_REGS_GATE_ENABLE_MASK ;
 int CPM_CONTROL__TXCLK_DYN_GATE_ENABLE_MASK ;
 int CPM_CONTROL__TXCLK_LCNT_GATE_ENABLE_MASK ;
 int CPM_CONTROL__TXCLK_PRBS_GATE_ENABLE_MASK ;
 int CPM_CONTROL__TXCLK_REGS_GATE_ENABLE_MASK ;
 int RREG32_PCIE (int ) ;
 int WREG32_PCIE (int ,int) ;
 int smnCPM_CONTROL ;

__attribute__((used)) static void nbio_v2_3_update_medium_grain_clock_gating(struct amdgpu_device *adev,
             bool enable)
{
 uint32_t def, data;

 def = data = RREG32_PCIE(smnCPM_CONTROL);
 if (enable && (adev->cg_flags & AMD_CG_SUPPORT_BIF_MGCG)) {
  data |= (CPM_CONTROL__LCLK_DYN_GATE_ENABLE_MASK |
    CPM_CONTROL__TXCLK_DYN_GATE_ENABLE_MASK |
    CPM_CONTROL__TXCLK_LCNT_GATE_ENABLE_MASK |
    CPM_CONTROL__TXCLK_REGS_GATE_ENABLE_MASK |
    CPM_CONTROL__TXCLK_PRBS_GATE_ENABLE_MASK |
    CPM_CONTROL__REFCLK_REGS_GATE_ENABLE_MASK);
 } else {
  data &= ~(CPM_CONTROL__LCLK_DYN_GATE_ENABLE_MASK |
     CPM_CONTROL__TXCLK_DYN_GATE_ENABLE_MASK |
     CPM_CONTROL__TXCLK_LCNT_GATE_ENABLE_MASK |
     CPM_CONTROL__TXCLK_REGS_GATE_ENABLE_MASK |
     CPM_CONTROL__TXCLK_PRBS_GATE_ENABLE_MASK |
     CPM_CONTROL__REFCLK_REGS_GATE_ENABLE_MASK);
 }

 if (def != data)
  WREG32_PCIE(smnCPM_CONTROL, data);
}
