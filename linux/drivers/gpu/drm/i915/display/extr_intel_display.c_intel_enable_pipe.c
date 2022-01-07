
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int crtc; } ;
struct intel_crtc_state {int cpu_transcoder; scalar_t__ has_pch_encoder; TYPE_1__ base; } ;
struct TYPE_4__ {int dev; } ;
struct intel_crtc {int pipe; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef int i915_reg_t ;
typedef enum transcoder { ____Placeholder_transcoder } transcoder ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int DRM_DEBUG_KMS (char*,int ) ;
 scalar_t__ HAS_GMCH (struct drm_i915_private*) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int INTEL_OUTPUT_DSI ;
 int IS_I830 (struct drm_i915_private*) ;
 int PIPECONF (int) ;
 int PIPECONF_ENABLE ;
 int POSTING_READ (int ) ;
 int WARN_ON (int) ;
 int assert_dsi_pll_enabled (struct drm_i915_private*) ;
 int assert_fdi_rx_pll_enabled (struct drm_i915_private*,int ) ;
 int assert_fdi_tx_pll_enabled (struct drm_i915_private*,int) ;
 int assert_planes_disabled (struct intel_crtc*) ;
 int assert_pll_enabled (struct drm_i915_private*,int) ;
 scalar_t__ intel_crtc_has_type (struct intel_crtc_state const*,int ) ;
 scalar_t__ intel_crtc_max_vblank_count (struct intel_crtc_state const*) ;
 int intel_crtc_pch_transcoder (struct intel_crtc*) ;
 int intel_wait_for_pipe_scanline_moving (struct intel_crtc*) ;
 int pipe_name (int) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_crtc* to_intel_crtc (int ) ;
 int trace_intel_pipe_enable (struct intel_crtc*) ;

__attribute__((used)) static void intel_enable_pipe(const struct intel_crtc_state *new_crtc_state)
{
 struct intel_crtc *crtc = to_intel_crtc(new_crtc_state->base.crtc);
 struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 enum transcoder cpu_transcoder = new_crtc_state->cpu_transcoder;
 enum pipe pipe = crtc->pipe;
 i915_reg_t reg;
 u32 val;

 DRM_DEBUG_KMS("enabling pipe %c\n", pipe_name(pipe));

 assert_planes_disabled(crtc);






 if (HAS_GMCH(dev_priv)) {
  if (intel_crtc_has_type(new_crtc_state, INTEL_OUTPUT_DSI))
   assert_dsi_pll_enabled(dev_priv);
  else
   assert_pll_enabled(dev_priv, pipe);
 } else {
  if (new_crtc_state->has_pch_encoder) {

   assert_fdi_rx_pll_enabled(dev_priv,
        intel_crtc_pch_transcoder(crtc));
   assert_fdi_tx_pll_enabled(dev_priv,
        (enum pipe) cpu_transcoder);
  }

 }

 trace_intel_pipe_enable(crtc);

 reg = PIPECONF(cpu_transcoder);
 val = I915_READ(reg);
 if (val & PIPECONF_ENABLE) {

  WARN_ON(!IS_I830(dev_priv));
  return;
 }

 I915_WRITE(reg, val | PIPECONF_ENABLE);
 POSTING_READ(reg);
 if (intel_crtc_max_vblank_count(new_crtc_state) == 0)
  intel_wait_for_pipe_scanline_moving(crtc);
}
