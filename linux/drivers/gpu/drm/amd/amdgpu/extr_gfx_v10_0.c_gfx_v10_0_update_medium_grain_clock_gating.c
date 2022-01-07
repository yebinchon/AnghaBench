
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdgpu_device {int cg_flags; } ;


 int AMD_CG_SUPPORT_GFX_CP_LS ;
 int AMD_CG_SUPPORT_GFX_MGCG ;
 int AMD_CG_SUPPORT_GFX_MGLS ;
 int AMD_CG_SUPPORT_GFX_RLC_LS ;
 int CP_MEM_SLP_CNTL__CP_MEM_LS_EN_MASK ;
 int GC ;
 int RLC_CGTT_MGCG_OVERRIDE__GFXIP_MGCG_OVERRIDE_MASK ;
 int RLC_CGTT_MGCG_OVERRIDE__GFXIP_MGLS_OVERRIDE_MASK ;
 int RLC_CGTT_MGCG_OVERRIDE__GRBM_CGTT_SCLK_OVERRIDE_MASK ;
 int RLC_CGTT_MGCG_OVERRIDE__RLC_CGTT_SCLK_OVERRIDE_MASK ;
 int RLC_MEM_SLP_CNTL__RLC_MEM_LS_EN_MASK ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int WREG32_SOC15 (int ,int ,int ,int) ;
 int mmCP_MEM_SLP_CNTL ;
 int mmRLC_CGTT_MGCG_OVERRIDE ;
 int mmRLC_MEM_SLP_CNTL ;

__attribute__((used)) static void gfx_v10_0_update_medium_grain_clock_gating(struct amdgpu_device *adev,
            bool enable)
{
 uint32_t data, def;


 if (enable && (adev->cg_flags & AMD_CG_SUPPORT_GFX_MGCG)) {

  def = data = RREG32_SOC15(GC, 0, mmRLC_CGTT_MGCG_OVERRIDE);
  data &= ~(RLC_CGTT_MGCG_OVERRIDE__GRBM_CGTT_SCLK_OVERRIDE_MASK |
     RLC_CGTT_MGCG_OVERRIDE__GFXIP_MGCG_OVERRIDE_MASK |
     RLC_CGTT_MGCG_OVERRIDE__GFXIP_MGLS_OVERRIDE_MASK);


  data |= RLC_CGTT_MGCG_OVERRIDE__RLC_CGTT_SCLK_OVERRIDE_MASK;

  if (def != data)
   WREG32_SOC15(GC, 0, mmRLC_CGTT_MGCG_OVERRIDE, data);


  if (adev->cg_flags & AMD_CG_SUPPORT_GFX_MGLS) {

   if (adev->cg_flags & AMD_CG_SUPPORT_GFX_RLC_LS) {
    def = data = RREG32_SOC15(GC, 0, mmRLC_MEM_SLP_CNTL);
    data |= RLC_MEM_SLP_CNTL__RLC_MEM_LS_EN_MASK;
    if (def != data)
     WREG32_SOC15(GC, 0, mmRLC_MEM_SLP_CNTL, data);
   }

   if (adev->cg_flags & AMD_CG_SUPPORT_GFX_CP_LS) {
    def = data = RREG32_SOC15(GC, 0, mmCP_MEM_SLP_CNTL);
    data |= CP_MEM_SLP_CNTL__CP_MEM_LS_EN_MASK;
    if (def != data)
     WREG32_SOC15(GC, 0, mmCP_MEM_SLP_CNTL, data);
   }
  }
 } else {

  def = data = RREG32_SOC15(GC, 0, mmRLC_CGTT_MGCG_OVERRIDE);
  data |= (RLC_CGTT_MGCG_OVERRIDE__RLC_CGTT_SCLK_OVERRIDE_MASK |
    RLC_CGTT_MGCG_OVERRIDE__GRBM_CGTT_SCLK_OVERRIDE_MASK |
    RLC_CGTT_MGCG_OVERRIDE__GFXIP_MGCG_OVERRIDE_MASK |
    RLC_CGTT_MGCG_OVERRIDE__GFXIP_MGLS_OVERRIDE_MASK);
  if (def != data)
   WREG32_SOC15(GC, 0, mmRLC_CGTT_MGCG_OVERRIDE, data);


  data = RREG32_SOC15(GC, 0, mmRLC_MEM_SLP_CNTL);
  if (data & RLC_MEM_SLP_CNTL__RLC_MEM_LS_EN_MASK) {
   data &= ~RLC_MEM_SLP_CNTL__RLC_MEM_LS_EN_MASK;
   WREG32_SOC15(GC, 0, mmRLC_MEM_SLP_CNTL, data);
  }


  data = RREG32_SOC15(GC, 0, mmCP_MEM_SLP_CNTL);
  if (data & CP_MEM_SLP_CNTL__CP_MEM_LS_EN_MASK) {
   data &= ~CP_MEM_SLP_CNTL__CP_MEM_LS_EN_MASK;
   WREG32_SOC15(GC, 0, mmCP_MEM_SLP_CNTL, data);
  }
 }
}
