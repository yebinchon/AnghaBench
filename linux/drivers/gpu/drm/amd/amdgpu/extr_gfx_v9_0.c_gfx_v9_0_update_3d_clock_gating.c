
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_device {scalar_t__ asic_type; int cg_flags; } ;


 int AMD_CG_SUPPORT_GFX_3D_CGCG ;
 int AMD_CG_SUPPORT_GFX_3D_CGLS ;
 scalar_t__ CHIP_ARCTURUS ;
 int CP_RB_WPTR_POLL_CNTL__IDLE_POLL_COUNT__SHIFT ;
 int CP_RB_WPTR_POLL_CNTL__POLL_FREQUENCY__SHIFT ;
 int GC ;
 int RLC_CGCG_CGLS_CTRL_3D__CGCG_EN_MASK ;
 int RLC_CGCG_CGLS_CTRL_3D__CGCG_GFX_IDLE_THRESHOLD__SHIFT ;
 int RLC_CGCG_CGLS_CTRL_3D__CGLS_EN_MASK ;
 int RLC_CGCG_CGLS_CTRL_3D__CGLS_REP_COMPANSAT_DELAY__SHIFT ;
 int RLC_CGTT_MGCG_OVERRIDE__GFXIP_GFX3D_CG_OVERRIDE_MASK ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int WREG32_SOC15 (int ,int ,int ,int) ;
 int amdgpu_gfx_rlc_enter_safe_mode (struct amdgpu_device*) ;
 int amdgpu_gfx_rlc_exit_safe_mode (struct amdgpu_device*) ;
 int mmCP_RB_WPTR_POLL_CNTL ;
 int mmRLC_CGCG_CGLS_CTRL_3D ;
 int mmRLC_CGTT_MGCG_OVERRIDE ;

__attribute__((used)) static void gfx_v9_0_update_3d_clock_gating(struct amdgpu_device *adev,
        bool enable)
{
 uint32_t data, def;

 if (adev->asic_type == CHIP_ARCTURUS)
  return;

 amdgpu_gfx_rlc_enter_safe_mode(adev);


 if (enable && (adev->cg_flags & AMD_CG_SUPPORT_GFX_3D_CGCG)) {

  def = data = RREG32_SOC15(GC, 0, mmRLC_CGTT_MGCG_OVERRIDE);

  data &= ~RLC_CGTT_MGCG_OVERRIDE__GFXIP_GFX3D_CG_OVERRIDE_MASK;

  if (def != data)
   WREG32_SOC15(GC, 0, mmRLC_CGTT_MGCG_OVERRIDE, data);


  def = RREG32_SOC15(GC, 0, mmRLC_CGCG_CGLS_CTRL_3D);

  data = (0x36 << RLC_CGCG_CGLS_CTRL_3D__CGCG_GFX_IDLE_THRESHOLD__SHIFT) |
   RLC_CGCG_CGLS_CTRL_3D__CGCG_EN_MASK;
  if (adev->cg_flags & AMD_CG_SUPPORT_GFX_3D_CGLS)
   data |= (0x000F << RLC_CGCG_CGLS_CTRL_3D__CGLS_REP_COMPANSAT_DELAY__SHIFT) |
    RLC_CGCG_CGLS_CTRL_3D__CGLS_EN_MASK;
  if (def != data)
   WREG32_SOC15(GC, 0, mmRLC_CGCG_CGLS_CTRL_3D, data);


  def = RREG32_SOC15(GC, 0, mmCP_RB_WPTR_POLL_CNTL);
  data = (0x0100 << CP_RB_WPTR_POLL_CNTL__POLL_FREQUENCY__SHIFT) |
   (0x0090 << CP_RB_WPTR_POLL_CNTL__IDLE_POLL_COUNT__SHIFT);
  if (def != data)
   WREG32_SOC15(GC, 0, mmCP_RB_WPTR_POLL_CNTL, data);
 } else {

  def = data = RREG32_SOC15(GC, 0, mmRLC_CGCG_CGLS_CTRL_3D);

  data &= ~(RLC_CGCG_CGLS_CTRL_3D__CGCG_EN_MASK |
     RLC_CGCG_CGLS_CTRL_3D__CGLS_EN_MASK);

  if (def != data)
   WREG32_SOC15(GC, 0, mmRLC_CGCG_CGLS_CTRL_3D, data);
 }

 amdgpu_gfx_rlc_exit_safe_mode(adev);
}
