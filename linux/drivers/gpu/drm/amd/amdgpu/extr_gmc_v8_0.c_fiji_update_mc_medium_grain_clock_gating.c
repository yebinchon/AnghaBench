
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_device {int cg_flags; } ;


 int AMD_CG_SUPPORT_MC_MGCG ;
 int ATC_MISC_CG__ENABLE_MASK ;
 int MC_CITF_MISC_RD_CG__ENABLE_MASK ;
 int MC_CITF_MISC_VM_CG__ENABLE_MASK ;
 int MC_CITF_MISC_WR_CG__ENABLE_MASK ;
 int MC_HUB_MISC_HUB_CG__ENABLE_MASK ;
 int MC_HUB_MISC_SIP_CG__ENABLE_MASK ;
 int MC_HUB_MISC_VM_CG__ENABLE_MASK ;
 int MC_XPB_CLK_GAT__ENABLE_MASK ;
 int RREG32 (int ) ;
 int VM_L2_CG__ENABLE_MASK ;
 int WREG32 (int ,int ) ;
 int mmATC_MISC_CG ;
 int mmMC_CITF_MISC_RD_CG ;
 int mmMC_CITF_MISC_VM_CG ;
 int mmMC_CITF_MISC_WR_CG ;
 int mmMC_HUB_MISC_HUB_CG ;
 int mmMC_HUB_MISC_SIP_CG ;
 int mmMC_HUB_MISC_VM_CG ;
 int mmMC_XPB_CLK_GAT ;
 int mmVM_L2_CG ;

__attribute__((used)) static void fiji_update_mc_medium_grain_clock_gating(struct amdgpu_device *adev,
           bool enable)
{
 uint32_t data;

 if (enable && (adev->cg_flags & AMD_CG_SUPPORT_MC_MGCG)) {
  data = RREG32(mmMC_HUB_MISC_HUB_CG);
  data |= MC_HUB_MISC_HUB_CG__ENABLE_MASK;
  WREG32(mmMC_HUB_MISC_HUB_CG, data);

  data = RREG32(mmMC_HUB_MISC_SIP_CG);
  data |= MC_HUB_MISC_SIP_CG__ENABLE_MASK;
  WREG32(mmMC_HUB_MISC_SIP_CG, data);

  data = RREG32(mmMC_HUB_MISC_VM_CG);
  data |= MC_HUB_MISC_VM_CG__ENABLE_MASK;
  WREG32(mmMC_HUB_MISC_VM_CG, data);

  data = RREG32(mmMC_XPB_CLK_GAT);
  data |= MC_XPB_CLK_GAT__ENABLE_MASK;
  WREG32(mmMC_XPB_CLK_GAT, data);

  data = RREG32(mmATC_MISC_CG);
  data |= ATC_MISC_CG__ENABLE_MASK;
  WREG32(mmATC_MISC_CG, data);

  data = RREG32(mmMC_CITF_MISC_WR_CG);
  data |= MC_CITF_MISC_WR_CG__ENABLE_MASK;
  WREG32(mmMC_CITF_MISC_WR_CG, data);

  data = RREG32(mmMC_CITF_MISC_RD_CG);
  data |= MC_CITF_MISC_RD_CG__ENABLE_MASK;
  WREG32(mmMC_CITF_MISC_RD_CG, data);

  data = RREG32(mmMC_CITF_MISC_VM_CG);
  data |= MC_CITF_MISC_VM_CG__ENABLE_MASK;
  WREG32(mmMC_CITF_MISC_VM_CG, data);

  data = RREG32(mmVM_L2_CG);
  data |= VM_L2_CG__ENABLE_MASK;
  WREG32(mmVM_L2_CG, data);
 } else {
  data = RREG32(mmMC_HUB_MISC_HUB_CG);
  data &= ~MC_HUB_MISC_HUB_CG__ENABLE_MASK;
  WREG32(mmMC_HUB_MISC_HUB_CG, data);

  data = RREG32(mmMC_HUB_MISC_SIP_CG);
  data &= ~MC_HUB_MISC_SIP_CG__ENABLE_MASK;
  WREG32(mmMC_HUB_MISC_SIP_CG, data);

  data = RREG32(mmMC_HUB_MISC_VM_CG);
  data &= ~MC_HUB_MISC_VM_CG__ENABLE_MASK;
  WREG32(mmMC_HUB_MISC_VM_CG, data);

  data = RREG32(mmMC_XPB_CLK_GAT);
  data &= ~MC_XPB_CLK_GAT__ENABLE_MASK;
  WREG32(mmMC_XPB_CLK_GAT, data);

  data = RREG32(mmATC_MISC_CG);
  data &= ~ATC_MISC_CG__ENABLE_MASK;
  WREG32(mmATC_MISC_CG, data);

  data = RREG32(mmMC_CITF_MISC_WR_CG);
  data &= ~MC_CITF_MISC_WR_CG__ENABLE_MASK;
  WREG32(mmMC_CITF_MISC_WR_CG, data);

  data = RREG32(mmMC_CITF_MISC_RD_CG);
  data &= ~MC_CITF_MISC_RD_CG__ENABLE_MASK;
  WREG32(mmMC_CITF_MISC_RD_CG, data);

  data = RREG32(mmMC_CITF_MISC_VM_CG);
  data &= ~MC_CITF_MISC_VM_CG__ENABLE_MASK;
  WREG32(mmMC_CITF_MISC_VM_CG, data);

  data = RREG32(mmVM_L2_CG);
  data &= ~VM_L2_CG__ENABLE_MASK;
  WREG32(mmVM_L2_CG, data);
 }
}
