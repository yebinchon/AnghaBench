
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_device {int cg_flags; int flags; } ;


 int AMD_CG_SUPPORT_GFX_CGTS ;
 int AMD_CG_SUPPORT_GFX_CGTS_LS ;
 int AMD_CG_SUPPORT_GFX_CP_LS ;
 int AMD_CG_SUPPORT_GFX_MGCG ;
 int AMD_CG_SUPPORT_GFX_MGLS ;
 int AMD_CG_SUPPORT_GFX_RLC_LS ;
 int AMD_IS_APU ;
 int BPM_REG_MGCG_OVERRIDE ;
 int CGTS_SM_CTRL_REG__LS_OVERRIDE_MASK ;
 int CGTS_SM_CTRL_REG__ON_MONITOR_ADD_EN_MASK ;
 int CGTS_SM_CTRL_REG__ON_MONITOR_ADD__SHIFT ;
 int CGTS_SM_CTRL_REG__OVERRIDE_MASK ;
 int CGTS_SM_CTRL_REG__SM_MODE_ENABLE_MASK ;
 int CGTS_SM_CTRL_REG__SM_MODE_MASK ;
 int CGTS_SM_CTRL_REG__SM_MODE__SHIFT ;
 int CLE_BPM_SERDES_CMD ;
 int CP_MEM_LS_EN ;
 int CP_MEM_SLP_CNTL ;
 int CP_MEM_SLP_CNTL__CP_MEM_LS_EN_MASK ;
 int RLC_CGTT_MGCG_OVERRIDE__CPF_MASK ;
 int RLC_CGTT_MGCG_OVERRIDE__GRBM_MASK ;
 int RLC_CGTT_MGCG_OVERRIDE__MGCG_MASK ;
 int RLC_CGTT_MGCG_OVERRIDE__RLC_MASK ;
 int RLC_MEM_LS_EN ;
 int RLC_MEM_SLP_CNTL ;
 int RLC_MEM_SLP_CNTL__RLC_MEM_LS_EN_MASK ;
 int RREG32 (int ) ;
 int SET_BPM_SERDES_CMD ;
 int WREG32 (int ,int) ;
 int WREG32_FIELD (int ,int ,int) ;
 int amdgpu_gfx_rlc_enter_safe_mode (struct amdgpu_device*) ;
 int amdgpu_gfx_rlc_exit_safe_mode (struct amdgpu_device*) ;
 int gfx_v8_0_send_serdes_cmd (struct amdgpu_device*,int ,int ) ;
 int gfx_v8_0_wait_for_rlc_serdes (struct amdgpu_device*) ;
 int mmCGTS_SM_CTRL_REG ;
 int mmCP_MEM_SLP_CNTL ;
 int mmRLC_CGTT_MGCG_OVERRIDE ;
 int mmRLC_MEM_SLP_CNTL ;
 int udelay (int) ;

__attribute__((used)) static void gfx_v8_0_update_medium_grain_clock_gating(struct amdgpu_device *adev,
            bool enable)
{
 uint32_t temp, data;

 amdgpu_gfx_rlc_enter_safe_mode(adev);


 if (enable && (adev->cg_flags & AMD_CG_SUPPORT_GFX_MGCG)) {
  if (adev->cg_flags & AMD_CG_SUPPORT_GFX_MGLS) {
   if (adev->cg_flags & AMD_CG_SUPPORT_GFX_RLC_LS)

    WREG32_FIELD(RLC_MEM_SLP_CNTL, RLC_MEM_LS_EN, 1);

   if (adev->cg_flags & AMD_CG_SUPPORT_GFX_CP_LS)
    WREG32_FIELD(CP_MEM_SLP_CNTL, CP_MEM_LS_EN, 1);
  }


  temp = data = RREG32(mmRLC_CGTT_MGCG_OVERRIDE);
  if (adev->flags & AMD_IS_APU)
   data &= ~(RLC_CGTT_MGCG_OVERRIDE__CPF_MASK |
      RLC_CGTT_MGCG_OVERRIDE__RLC_MASK |
      RLC_CGTT_MGCG_OVERRIDE__MGCG_MASK);
  else
   data &= ~(RLC_CGTT_MGCG_OVERRIDE__CPF_MASK |
      RLC_CGTT_MGCG_OVERRIDE__RLC_MASK |
      RLC_CGTT_MGCG_OVERRIDE__MGCG_MASK |
      RLC_CGTT_MGCG_OVERRIDE__GRBM_MASK);

  if (temp != data)
   WREG32(mmRLC_CGTT_MGCG_OVERRIDE, data);


  gfx_v8_0_wait_for_rlc_serdes(adev);


  gfx_v8_0_send_serdes_cmd(adev, BPM_REG_MGCG_OVERRIDE, CLE_BPM_SERDES_CMD);

  if (adev->cg_flags & AMD_CG_SUPPORT_GFX_CGTS) {

   temp = data = RREG32(mmCGTS_SM_CTRL_REG);
   data &= ~(CGTS_SM_CTRL_REG__SM_MODE_MASK);
   data |= (0x2 << CGTS_SM_CTRL_REG__SM_MODE__SHIFT);
   data |= CGTS_SM_CTRL_REG__SM_MODE_ENABLE_MASK;
   data &= ~CGTS_SM_CTRL_REG__OVERRIDE_MASK;
   if ((adev->cg_flags & AMD_CG_SUPPORT_GFX_MGLS) &&
       (adev->cg_flags & AMD_CG_SUPPORT_GFX_CGTS_LS))
    data &= ~CGTS_SM_CTRL_REG__LS_OVERRIDE_MASK;
   data |= CGTS_SM_CTRL_REG__ON_MONITOR_ADD_EN_MASK;
   data |= (0x96 << CGTS_SM_CTRL_REG__ON_MONITOR_ADD__SHIFT);
   if (temp != data)
    WREG32(mmCGTS_SM_CTRL_REG, data);
  }
  udelay(50);


  gfx_v8_0_wait_for_rlc_serdes(adev);
 } else {

  temp = data = RREG32(mmRLC_CGTT_MGCG_OVERRIDE);
  data |= (RLC_CGTT_MGCG_OVERRIDE__CPF_MASK |
    RLC_CGTT_MGCG_OVERRIDE__RLC_MASK |
    RLC_CGTT_MGCG_OVERRIDE__MGCG_MASK |
    RLC_CGTT_MGCG_OVERRIDE__GRBM_MASK);
  if (temp != data)
   WREG32(mmRLC_CGTT_MGCG_OVERRIDE, data);


  data = RREG32(mmRLC_MEM_SLP_CNTL);
  if (data & RLC_MEM_SLP_CNTL__RLC_MEM_LS_EN_MASK) {
   data &= ~RLC_MEM_SLP_CNTL__RLC_MEM_LS_EN_MASK;
   WREG32(mmRLC_MEM_SLP_CNTL, data);
  }


  data = RREG32(mmCP_MEM_SLP_CNTL);
  if (data & CP_MEM_SLP_CNTL__CP_MEM_LS_EN_MASK) {
   data &= ~CP_MEM_SLP_CNTL__CP_MEM_LS_EN_MASK;
   WREG32(mmCP_MEM_SLP_CNTL, data);
  }


  temp = data = RREG32(mmCGTS_SM_CTRL_REG);
  data |= (CGTS_SM_CTRL_REG__OVERRIDE_MASK |
    CGTS_SM_CTRL_REG__LS_OVERRIDE_MASK);
  if (temp != data)
   WREG32(mmCGTS_SM_CTRL_REG, data);


  gfx_v8_0_wait_for_rlc_serdes(adev);


  gfx_v8_0_send_serdes_cmd(adev, BPM_REG_MGCG_OVERRIDE, SET_BPM_SERDES_CMD);

  udelay(50);


  gfx_v8_0_wait_for_rlc_serdes(adev);
 }

 amdgpu_gfx_rlc_exit_safe_mode(adev);
}
