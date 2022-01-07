
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dpll {int dummy; } ;
struct TYPE_2__ {int * crtc; } ;
struct intel_crtc_state {int pixel_multiplier; struct dpll dpll; TYPE_1__ base; } ;
struct intel_crtc {int base; } ;
struct drm_i915_private {int dummy; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_CHERRYVIEW (struct drm_i915_private*) ;
 int chv_compute_dpll (struct intel_crtc*,struct intel_crtc_state*) ;
 int chv_enable_pll (struct intel_crtc*,struct intel_crtc_state*) ;
 int chv_prepare_pll (struct intel_crtc*,struct intel_crtc_state*) ;
 struct intel_crtc* intel_get_crtc_for_pipe (struct drm_i915_private*,int) ;
 int kfree (struct intel_crtc_state*) ;
 struct intel_crtc_state* kzalloc (int,int ) ;
 int vlv_compute_dpll (struct intel_crtc*,struct intel_crtc_state*) ;
 int vlv_enable_pll (struct intel_crtc*,struct intel_crtc_state*) ;
 int vlv_prepare_pll (struct intel_crtc*,struct intel_crtc_state*) ;

int vlv_force_pll_on(struct drm_i915_private *dev_priv, enum pipe pipe,
       const struct dpll *dpll)
{
 struct intel_crtc *crtc = intel_get_crtc_for_pipe(dev_priv, pipe);
 struct intel_crtc_state *pipe_config;

 pipe_config = kzalloc(sizeof(*pipe_config), GFP_KERNEL);
 if (!pipe_config)
  return -ENOMEM;

 pipe_config->base.crtc = &crtc->base;
 pipe_config->pixel_multiplier = 1;
 pipe_config->dpll = *dpll;

 if (IS_CHERRYVIEW(dev_priv)) {
  chv_compute_dpll(crtc, pipe_config);
  chv_prepare_pll(crtc, pipe_config);
  chv_enable_pll(crtc, pipe_config);
 } else {
  vlv_compute_dpll(crtc, pipe_config);
  vlv_prepare_pll(crtc, pipe_config);
  vlv_enable_pll(crtc, pipe_config);
 }

 kfree(pipe_config);

 return 0;
}
