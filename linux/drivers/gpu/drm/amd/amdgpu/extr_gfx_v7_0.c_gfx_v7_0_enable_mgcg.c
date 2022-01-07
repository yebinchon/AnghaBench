
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int cg_flags; int grbm_idx_mutex; } ;


 int AMD_CG_SUPPORT_GFX_CGTS ;
 int AMD_CG_SUPPORT_GFX_CGTS_LS ;
 int AMD_CG_SUPPORT_GFX_CP_LS ;
 int AMD_CG_SUPPORT_GFX_MGCG ;
 int AMD_CG_SUPPORT_GFX_MGLS ;
 int CGTS_SM_CTRL_REG__LS_OVERRIDE_MASK ;
 int CGTS_SM_CTRL_REG__ON_MONITOR_ADD_EN_MASK ;
 int CGTS_SM_CTRL_REG__ON_MONITOR_ADD_MASK ;
 int CGTS_SM_CTRL_REG__ON_MONITOR_ADD__SHIFT ;
 int CGTS_SM_CTRL_REG__OVERRIDE_MASK ;
 int CGTS_SM_CTRL_REG__SM_MODE_ENABLE_MASK ;
 int CGTS_SM_CTRL_REG__SM_MODE_MASK ;
 int CGTS_SM_CTRL_REG__SM_MODE__SHIFT ;
 int CP_MEM_SLP_CNTL__CP_MEM_LS_EN_MASK ;
 int RLC_MEM_SLP_CNTL__RLC_MEM_LS_EN_MASK ;
 int RLC_SERDES_WR_CTRL__BPM_ADDR_MASK ;
 int RLC_SERDES_WR_CTRL__MGCG_OVERRIDE_0_MASK ;
 int RLC_SERDES_WR_CTRL__MGCG_OVERRIDE_1_MASK ;
 int RREG32 (int ) ;
 int WREG32 (int ,int) ;
 int gfx_v7_0_halt_rlc (struct amdgpu_device*) ;
 int gfx_v7_0_select_se_sh (struct amdgpu_device*,int,int,int) ;
 int gfx_v7_0_update_rlc (struct amdgpu_device*,int) ;
 int mmCGTS_SM_CTRL_REG ;
 int mmCP_MEM_SLP_CNTL ;
 int mmRLC_CGTT_MGCG_OVERRIDE ;
 int mmRLC_MEM_SLP_CNTL ;
 int mmRLC_SERDES_WR_CTRL ;
 int mmRLC_SERDES_WR_CU_MASTER_MASK ;
 int mmRLC_SERDES_WR_NONCU_MASTER_MASK ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void gfx_v7_0_enable_mgcg(struct amdgpu_device *adev, bool enable)
{
 u32 data, orig, tmp = 0;

 if (enable && (adev->cg_flags & AMD_CG_SUPPORT_GFX_MGCG)) {
  if (adev->cg_flags & AMD_CG_SUPPORT_GFX_MGLS) {
   if (adev->cg_flags & AMD_CG_SUPPORT_GFX_CP_LS) {
    orig = data = RREG32(mmCP_MEM_SLP_CNTL);
    data |= CP_MEM_SLP_CNTL__CP_MEM_LS_EN_MASK;
    if (orig != data)
     WREG32(mmCP_MEM_SLP_CNTL, data);
   }
  }

  orig = data = RREG32(mmRLC_CGTT_MGCG_OVERRIDE);
  data |= 0x00000001;
  data &= 0xfffffffd;
  if (orig != data)
   WREG32(mmRLC_CGTT_MGCG_OVERRIDE, data);

  tmp = gfx_v7_0_halt_rlc(adev);

  mutex_lock(&adev->grbm_idx_mutex);
  gfx_v7_0_select_se_sh(adev, 0xffffffff, 0xffffffff, 0xffffffff);
  WREG32(mmRLC_SERDES_WR_CU_MASTER_MASK, 0xffffffff);
  WREG32(mmRLC_SERDES_WR_NONCU_MASTER_MASK, 0xffffffff);
  data = RLC_SERDES_WR_CTRL__BPM_ADDR_MASK |
   RLC_SERDES_WR_CTRL__MGCG_OVERRIDE_0_MASK;
  WREG32(mmRLC_SERDES_WR_CTRL, data);
  mutex_unlock(&adev->grbm_idx_mutex);

  gfx_v7_0_update_rlc(adev, tmp);

  if (adev->cg_flags & AMD_CG_SUPPORT_GFX_CGTS) {
   orig = data = RREG32(mmCGTS_SM_CTRL_REG);
   data &= ~CGTS_SM_CTRL_REG__SM_MODE_MASK;
   data |= (0x2 << CGTS_SM_CTRL_REG__SM_MODE__SHIFT);
   data |= CGTS_SM_CTRL_REG__SM_MODE_ENABLE_MASK;
   data &= ~CGTS_SM_CTRL_REG__OVERRIDE_MASK;
   if ((adev->cg_flags & AMD_CG_SUPPORT_GFX_MGLS) &&
       (adev->cg_flags & AMD_CG_SUPPORT_GFX_CGTS_LS))
    data &= ~CGTS_SM_CTRL_REG__LS_OVERRIDE_MASK;
   data &= ~CGTS_SM_CTRL_REG__ON_MONITOR_ADD_MASK;
   data |= CGTS_SM_CTRL_REG__ON_MONITOR_ADD_EN_MASK;
   data |= (0x96 << CGTS_SM_CTRL_REG__ON_MONITOR_ADD__SHIFT);
   if (orig != data)
    WREG32(mmCGTS_SM_CTRL_REG, data);
  }
 } else {
  orig = data = RREG32(mmRLC_CGTT_MGCG_OVERRIDE);
  data |= 0x00000003;
  if (orig != data)
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

  orig = data = RREG32(mmCGTS_SM_CTRL_REG);
  data |= CGTS_SM_CTRL_REG__OVERRIDE_MASK | CGTS_SM_CTRL_REG__LS_OVERRIDE_MASK;
  if (orig != data)
   WREG32(mmCGTS_SM_CTRL_REG, data);

  tmp = gfx_v7_0_halt_rlc(adev);

  mutex_lock(&adev->grbm_idx_mutex);
  gfx_v7_0_select_se_sh(adev, 0xffffffff, 0xffffffff, 0xffffffff);
  WREG32(mmRLC_SERDES_WR_CU_MASTER_MASK, 0xffffffff);
  WREG32(mmRLC_SERDES_WR_NONCU_MASTER_MASK, 0xffffffff);
  data = RLC_SERDES_WR_CTRL__BPM_ADDR_MASK | RLC_SERDES_WR_CTRL__MGCG_OVERRIDE_1_MASK;
  WREG32(mmRLC_SERDES_WR_CTRL, data);
  mutex_unlock(&adev->grbm_idx_mutex);

  gfx_v7_0_update_rlc(adev, tmp);
 }
}
