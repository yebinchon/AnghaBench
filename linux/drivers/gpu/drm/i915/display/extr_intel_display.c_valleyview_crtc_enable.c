
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct drm_crtc* crtc; } ;
struct intel_crtc_state {TYPE_1__ base; } ;
struct intel_crtc {int pipe; int active; } ;
struct intel_atomic_state {int dummy; } ;
struct TYPE_4__ {int (* initial_watermarks ) (struct intel_atomic_state*,struct intel_crtc_state*) ;} ;
struct drm_i915_private {TYPE_2__ display; } ;
struct drm_device {int dummy; } ;
struct drm_crtc {struct drm_device* dev; } ;


 int CHV_BLEND (int) ;
 int CHV_BLEND_LEGACY ;
 int CHV_CANVAS (int) ;
 int I915_WRITE (int ,int ) ;
 scalar_t__ IS_CHERRYVIEW (struct drm_i915_private*) ;
 int M1_N1 ;
 int PIPE_B ;
 scalar_t__ WARN_ON (int) ;
 int assert_vblank_disabled (struct drm_crtc*) ;
 int chv_enable_pll (struct intel_crtc*,struct intel_crtc_state*) ;
 int chv_prepare_pll (struct intel_crtc*,struct intel_crtc_state*) ;
 int i9xx_pfit_enable (struct intel_crtc_state*) ;
 int i9xx_set_pipeconf (struct intel_crtc_state*) ;
 int intel_color_commit (struct intel_crtc_state*) ;
 int intel_color_load_luts (struct intel_crtc_state*) ;
 scalar_t__ intel_crtc_has_dp_encoder (struct intel_crtc_state*) ;
 int intel_crtc_vblank_on (struct intel_crtc_state*) ;
 int intel_disable_primary_plane (struct intel_crtc_state*) ;
 int intel_dp_set_m_n (struct intel_crtc_state*,int ) ;
 int intel_enable_pipe (struct intel_crtc_state*) ;
 int intel_encoders_enable (struct intel_crtc*,struct intel_crtc_state*,struct intel_atomic_state*) ;
 int intel_encoders_pre_enable (struct intel_crtc*,struct intel_crtc_state*,struct intel_atomic_state*) ;
 int intel_encoders_pre_pll_enable (struct intel_crtc*,struct intel_crtc_state*,struct intel_atomic_state*) ;
 int intel_set_cpu_fifo_underrun_reporting (struct drm_i915_private*,int,int) ;
 int intel_set_pipe_src_size (struct intel_crtc_state*) ;
 int intel_set_pipe_timings (struct intel_crtc_state*) ;
 int stub1 (struct intel_atomic_state*,struct intel_crtc_state*) ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;
 struct intel_crtc* to_intel_crtc (struct drm_crtc*) ;
 int vlv_enable_pll (struct intel_crtc*,struct intel_crtc_state*) ;
 int vlv_prepare_pll (struct intel_crtc*,struct intel_crtc_state*) ;

__attribute__((used)) static void valleyview_crtc_enable(struct intel_crtc_state *pipe_config,
       struct intel_atomic_state *state)
{
 struct drm_crtc *crtc = pipe_config->base.crtc;
 struct drm_device *dev = crtc->dev;
 struct drm_i915_private *dev_priv = to_i915(dev);
 struct intel_crtc *intel_crtc = to_intel_crtc(crtc);
 int pipe = intel_crtc->pipe;

 if (WARN_ON(intel_crtc->active))
  return;

 if (intel_crtc_has_dp_encoder(pipe_config))
  intel_dp_set_m_n(pipe_config, M1_N1);

 intel_set_pipe_timings(pipe_config);
 intel_set_pipe_src_size(pipe_config);

 if (IS_CHERRYVIEW(dev_priv) && pipe == PIPE_B) {
  I915_WRITE(CHV_BLEND(pipe), CHV_BLEND_LEGACY);
  I915_WRITE(CHV_CANVAS(pipe), 0);
 }

 i9xx_set_pipeconf(pipe_config);

 intel_crtc->active = 1;

 intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, 1);

 intel_encoders_pre_pll_enable(intel_crtc, pipe_config, state);

 if (IS_CHERRYVIEW(dev_priv)) {
  chv_prepare_pll(intel_crtc, pipe_config);
  chv_enable_pll(intel_crtc, pipe_config);
 } else {
  vlv_prepare_pll(intel_crtc, pipe_config);
  vlv_enable_pll(intel_crtc, pipe_config);
 }

 intel_encoders_pre_enable(intel_crtc, pipe_config, state);

 i9xx_pfit_enable(pipe_config);

 intel_color_load_luts(pipe_config);
 intel_color_commit(pipe_config);

 intel_disable_primary_plane(pipe_config);

 dev_priv->display.initial_watermarks(state, pipe_config);
 intel_enable_pipe(pipe_config);

 assert_vblank_disabled(crtc);
 intel_crtc_vblank_on(pipe_config);

 intel_encoders_enable(intel_crtc, pipe_config, state);
}
