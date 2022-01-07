
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_device {int cg_flags; } ;


 int AMD_CG_SUPPORT_BIF_MGCG ;
 int NBIF_MGCG_CTRL_LCLK__NBIF_MGCG_EN_LCLK_MASK ;
 int RREG32_PCIE (int ) ;
 int SYSHUB_MMREG_DIRECT_SYSHUB_MGCG_CTRL_SHUBCLK__SYSHUB_MGCG_EN_SHUBCLK_MASK ;
 int SYSHUB_MMREG_DIRECT_SYSHUB_MGCG_CTRL_SOCCLK__SYSHUB_MGCG_EN_SOCCLK_MASK ;
 int WREG32_PCIE (int ,int ) ;
 int ixSYSHUB_MMREG_IND_SYSHUB_MGCG_CTRL_SHUBCLK ;
 int ixSYSHUB_MMREG_IND_SYSHUB_MGCG_CTRL_SOCCLK ;
 int nbio_7_0_read_syshub_ind_mmr (struct amdgpu_device*,int ) ;
 int nbio_7_0_write_syshub_ind_mmr (struct amdgpu_device*,int ,int ) ;
 int smnNBIF_MGCG_CTRL_LCLK ;

__attribute__((used)) static void nbio_v7_0_update_medium_grain_clock_gating(struct amdgpu_device *adev,
             bool enable)
{
 uint32_t def, data;


 def = data = RREG32_PCIE(smnNBIF_MGCG_CTRL_LCLK);

 if (enable && (adev->cg_flags & AMD_CG_SUPPORT_BIF_MGCG))
  data |= NBIF_MGCG_CTRL_LCLK__NBIF_MGCG_EN_LCLK_MASK;
 else
  data &= ~NBIF_MGCG_CTRL_LCLK__NBIF_MGCG_EN_LCLK_MASK;

 if (def != data)
  WREG32_PCIE(smnNBIF_MGCG_CTRL_LCLK, data);


 def = data = nbio_7_0_read_syshub_ind_mmr(adev, ixSYSHUB_MMREG_IND_SYSHUB_MGCG_CTRL_SOCCLK);

 if (enable && (adev->cg_flags & AMD_CG_SUPPORT_BIF_MGCG))
  data |= SYSHUB_MMREG_DIRECT_SYSHUB_MGCG_CTRL_SOCCLK__SYSHUB_MGCG_EN_SOCCLK_MASK;
 else
  data &= ~SYSHUB_MMREG_DIRECT_SYSHUB_MGCG_CTRL_SOCCLK__SYSHUB_MGCG_EN_SOCCLK_MASK;

 if (def != data)
  nbio_7_0_write_syshub_ind_mmr(adev, ixSYSHUB_MMREG_IND_SYSHUB_MGCG_CTRL_SOCCLK, data);


 def = data = nbio_7_0_read_syshub_ind_mmr(adev, ixSYSHUB_MMREG_IND_SYSHUB_MGCG_CTRL_SHUBCLK);

 if (enable && (adev->cg_flags & AMD_CG_SUPPORT_BIF_MGCG))
  data |= SYSHUB_MMREG_DIRECT_SYSHUB_MGCG_CTRL_SHUBCLK__SYSHUB_MGCG_EN_SHUBCLK_MASK;
 else
  data &= ~SYSHUB_MMREG_DIRECT_SYSHUB_MGCG_CTRL_SHUBCLK__SYSHUB_MGCG_EN_SHUBCLK_MASK;

 if (def != data)
  nbio_7_0_write_syshub_ind_mmr(adev, ixSYSHUB_MMREG_IND_SYSHUB_MGCG_CTRL_SHUBCLK, data);
}
