
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_device {int cg_flags; } ;


 int AMD_CG_SUPPORT_GFX_CGCG ;
 int AMD_CG_SUPPORT_GFX_CGLS ;
 int CP_RB_WPTR_POLL_CNTL__IDLE_POLL_COUNT__SHIFT ;
 int CP_RB_WPTR_POLL_CNTL__POLL_FREQUENCY__SHIFT ;
 int GC ;
 int RLC_CGCG_CGLS_CTRL__CGCG_EN_MASK ;
 int RLC_CGCG_CGLS_CTRL__CGCG_GFX_IDLE_THRESHOLD__SHIFT ;
 int RLC_CGCG_CGLS_CTRL__CGLS_EN_MASK ;
 int RLC_CGCG_CGLS_CTRL__CGLS_REP_COMPANSAT_DELAY__SHIFT ;
 int RLC_CGTT_MGCG_OVERRIDE__GFXIP_CGCG_OVERRIDE_MASK ;
 int RLC_CGTT_MGCG_OVERRIDE__GFXIP_CGLS_OVERRIDE_MASK ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int WREG32_SOC15 (int ,int ,int ,int) ;
 int mmCP_RB_WPTR_POLL_CNTL ;
 int mmRLC_CGCG_CGLS_CTRL ;
 int mmRLC_CGTT_MGCG_OVERRIDE ;

__attribute__((used)) static void gfx_v10_0_update_coarse_grain_clock_gating(struct amdgpu_device *adev,
            bool enable)
{
 uint32_t def, data;

 if (enable && (adev->cg_flags & AMD_CG_SUPPORT_GFX_CGCG)) {
  def = data = RREG32_SOC15(GC, 0, mmRLC_CGTT_MGCG_OVERRIDE);

  data &= ~RLC_CGTT_MGCG_OVERRIDE__GFXIP_CGCG_OVERRIDE_MASK;
  if (adev->cg_flags & AMD_CG_SUPPORT_GFX_CGLS)
   data &= ~RLC_CGTT_MGCG_OVERRIDE__GFXIP_CGLS_OVERRIDE_MASK;
  else
   data |= RLC_CGTT_MGCG_OVERRIDE__GFXIP_CGLS_OVERRIDE_MASK;

  if (def != data)
   WREG32_SOC15(GC, 0, mmRLC_CGTT_MGCG_OVERRIDE, data);


  def = RREG32_SOC15(GC, 0, mmRLC_CGCG_CGLS_CTRL);
  data = (0x36 << RLC_CGCG_CGLS_CTRL__CGCG_GFX_IDLE_THRESHOLD__SHIFT) |
   RLC_CGCG_CGLS_CTRL__CGCG_EN_MASK;
  if (adev->cg_flags & AMD_CG_SUPPORT_GFX_CGLS)
   data |= (0x000F << RLC_CGCG_CGLS_CTRL__CGLS_REP_COMPANSAT_DELAY__SHIFT) |
    RLC_CGCG_CGLS_CTRL__CGLS_EN_MASK;
  if (def != data)
   WREG32_SOC15(GC, 0, mmRLC_CGCG_CGLS_CTRL, data);


  def = RREG32_SOC15(GC, 0, mmCP_RB_WPTR_POLL_CNTL);
  data = (0x0100 << CP_RB_WPTR_POLL_CNTL__POLL_FREQUENCY__SHIFT) |
   (0x0090 << CP_RB_WPTR_POLL_CNTL__IDLE_POLL_COUNT__SHIFT);
  if (def != data)
   WREG32_SOC15(GC, 0, mmCP_RB_WPTR_POLL_CNTL, data);
 } else {
  def = data = RREG32_SOC15(GC, 0, mmRLC_CGCG_CGLS_CTRL);

  data &= ~(RLC_CGCG_CGLS_CTRL__CGCG_EN_MASK | RLC_CGCG_CGLS_CTRL__CGLS_EN_MASK);

  if (def != data)
   WREG32_SOC15(GC, 0, mmRLC_CGCG_CGLS_CTRL, data);
 }
}
