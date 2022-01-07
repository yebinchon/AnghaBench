
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct drm_crtc* crtc; } ;
struct intel_crtc_state {TYPE_1__ base; } ;
struct intel_crtc {int pipe; } ;
struct intel_atomic_state {int dummy; } ;
struct TYPE_4__ {int initial_watermarks; } ;
struct drm_i915_private {TYPE_2__ display; } ;
struct drm_device {int dummy; } ;
struct drm_crtc {struct drm_device* dev; } ;


 int INTEL_OUTPUT_DSI ;
 scalar_t__ IS_CHERRYVIEW (struct drm_i915_private*) ;
 scalar_t__ IS_GEN (struct drm_i915_private*,int) ;
 scalar_t__ IS_I830 (struct drm_i915_private*) ;
 scalar_t__ IS_VALLEYVIEW (struct drm_i915_private*) ;
 int assert_vblank_disabled (struct drm_crtc*) ;
 int chv_disable_pll (struct drm_i915_private*,int) ;
 int drm_crtc_vblank_off (struct drm_crtc*) ;
 int i830_enable_pipe (struct drm_i915_private*,int) ;
 int i9xx_disable_pll (struct intel_crtc_state*) ;
 int i9xx_pfit_disable (struct intel_crtc_state*) ;
 int intel_crtc_has_type (struct intel_crtc_state*,int ) ;
 int intel_disable_pipe (struct intel_crtc_state*) ;
 int intel_encoders_disable (struct intel_crtc*,struct intel_crtc_state*,struct intel_atomic_state*) ;
 int intel_encoders_post_disable (struct intel_crtc*,struct intel_crtc_state*,struct intel_atomic_state*) ;
 int intel_encoders_post_pll_disable (struct intel_crtc*,struct intel_crtc_state*,struct intel_atomic_state*) ;
 int intel_set_cpu_fifo_underrun_reporting (struct drm_i915_private*,int,int) ;
 int intel_update_watermarks (struct intel_crtc*) ;
 int intel_wait_for_vblank (struct drm_i915_private*,int) ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;
 struct intel_crtc* to_intel_crtc (struct drm_crtc*) ;
 int vlv_disable_pll (struct drm_i915_private*,int) ;

__attribute__((used)) static void i9xx_crtc_disable(struct intel_crtc_state *old_crtc_state,
         struct intel_atomic_state *state)
{
 struct drm_crtc *crtc = old_crtc_state->base.crtc;
 struct drm_device *dev = crtc->dev;
 struct drm_i915_private *dev_priv = to_i915(dev);
 struct intel_crtc *intel_crtc = to_intel_crtc(crtc);
 int pipe = intel_crtc->pipe;





 if (IS_GEN(dev_priv, 2))
  intel_wait_for_vblank(dev_priv, pipe);

 intel_encoders_disable(intel_crtc, old_crtc_state, state);

 drm_crtc_vblank_off(crtc);
 assert_vblank_disabled(crtc);

 intel_disable_pipe(old_crtc_state);

 i9xx_pfit_disable(old_crtc_state);

 intel_encoders_post_disable(intel_crtc, old_crtc_state, state);

 if (!intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DSI)) {
  if (IS_CHERRYVIEW(dev_priv))
   chv_disable_pll(dev_priv, pipe);
  else if (IS_VALLEYVIEW(dev_priv))
   vlv_disable_pll(dev_priv, pipe);
  else
   i9xx_disable_pll(old_crtc_state);
 }

 intel_encoders_post_pll_disable(intel_crtc, old_crtc_state, state);

 if (!IS_GEN(dev_priv, 2))
  intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, 0);

 if (!dev_priv->display.initial_watermarks)
  intel_update_watermarks(intel_crtc);


 if (IS_I830(dev_priv))
  i830_enable_pipe(dev_priv, pipe);
}
