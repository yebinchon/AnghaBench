
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_crtc {int dummy; } ;
struct drm_i915_private {int dummy; } ;
struct dpll {int m1; int m2; int p1; int p2; int n; int dot; int vco; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int DPLL (int) ;
 int DPLL_DVO_2X_MODE ;
 int DPLL_FPA01_P1_POST_DIV_SHIFT ;
 int DPLL_VCO_ENABLE ;
 int DPLL_VGA_MODE_DIS ;
 int DRM_DEBUG_KMS (char*,int ,int ,int ) ;
 int FP0 (int) ;
 int FP1 (int) ;
 int HBLANK (int) ;
 int HSYNC (int) ;
 int HTOTAL (int) ;
 int I915_WRITE (int ,int) ;
 int PIPECONF (int) ;
 int PIPECONF_ENABLE ;
 int PIPECONF_PROGRESSIVE ;
 int PIPESRC (int) ;
 int PLL_P2_DIVIDE_BY_4 ;
 int PLL_REF_INPUT_DREFCLK ;
 int POSTING_READ (int ) ;
 int VBLANK (int) ;
 int VSYNC (int) ;
 int VTOTAL (int) ;
 int WARN_ON (int) ;
 int i9xx_calc_dpll_params (int,struct dpll*) ;
 int i9xx_dpll_compute_fp (struct dpll*) ;
 struct intel_crtc* intel_get_crtc_for_pipe (struct drm_i915_private*,int) ;
 int intel_wait_for_pipe_scanline_moving (struct intel_crtc*) ;
 int pipe_name (int) ;
 int udelay (int) ;

void i830_enable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
{
 struct intel_crtc *crtc = intel_get_crtc_for_pipe(dev_priv, pipe);

 struct dpll clock = {
  .m1 = 18,
  .m2 = 7,
  .p1 = 13,
  .p2 = 4,
  .n = 2,
 };
 u32 dpll, fp;
 int i;

 WARN_ON(i9xx_calc_dpll_params(48000, &clock) != 25154);

 DRM_DEBUG_KMS("enabling pipe %c due to force quirk (vco=%d dot=%d)\n",
        pipe_name(pipe), clock.vco, clock.dot);

 fp = i9xx_dpll_compute_fp(&clock);
 dpll = DPLL_DVO_2X_MODE |
  DPLL_VGA_MODE_DIS |
  ((clock.p1 - 2) << DPLL_FPA01_P1_POST_DIV_SHIFT) |
  PLL_P2_DIVIDE_BY_4 |
  PLL_REF_INPUT_DREFCLK |
  DPLL_VCO_ENABLE;

 I915_WRITE(FP0(pipe), fp);
 I915_WRITE(FP1(pipe), fp);

 I915_WRITE(HTOTAL(pipe), (640 - 1) | ((800 - 1) << 16));
 I915_WRITE(HBLANK(pipe), (640 - 1) | ((800 - 1) << 16));
 I915_WRITE(HSYNC(pipe), (656 - 1) | ((752 - 1) << 16));
 I915_WRITE(VTOTAL(pipe), (480 - 1) | ((525 - 1) << 16));
 I915_WRITE(VBLANK(pipe), (480 - 1) | ((525 - 1) << 16));
 I915_WRITE(VSYNC(pipe), (490 - 1) | ((492 - 1) << 16));
 I915_WRITE(PIPESRC(pipe), ((640 - 1) << 16) | (480 - 1));






 I915_WRITE(DPLL(pipe), dpll & ~DPLL_VGA_MODE_DIS);
 I915_WRITE(DPLL(pipe), dpll);


 POSTING_READ(DPLL(pipe));
 udelay(150);






 I915_WRITE(DPLL(pipe), dpll);


 for (i = 0; i < 3 ; i++) {
  I915_WRITE(DPLL(pipe), dpll);
  POSTING_READ(DPLL(pipe));
  udelay(150);
 }

 I915_WRITE(PIPECONF(pipe), PIPECONF_ENABLE | PIPECONF_PROGRESSIVE);
 POSTING_READ(PIPECONF(pipe));

 intel_wait_for_pipe_scanline_moving(crtc);
}
