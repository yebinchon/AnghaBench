
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dpll; int dpll_md; } ;
struct intel_crtc_state {TYPE_1__ dpll_hw_state; } ;
struct TYPE_4__ {int dev; } ;
struct intel_crtc {int pipe; TYPE_2__ base; } ;
struct drm_i915_private {int * chv_dpll_md; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int CBR4_VLV ;
 int CBR_DPLLBMD_PIPE (int) ;
 int DPLL (int) ;
 int DPLL_MD (int) ;
 int DPLL_VCO_ENABLE ;
 int DPLL_VGA_MODE_DIS ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int ) ;
 int PIPE_A ;
 int PIPE_B ;
 int POSTING_READ (int ) ;
 int WARN_ON (int) ;
 int _chv_enable_pll (struct intel_crtc*,struct intel_crtc_state const*) ;
 int assert_panel_unlocked (struct drm_i915_private*,int) ;
 int assert_pipe_disabled (struct drm_i915_private*,int) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static void chv_enable_pll(struct intel_crtc *crtc,
      const struct intel_crtc_state *pipe_config)
{
 struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 enum pipe pipe = crtc->pipe;

 assert_pipe_disabled(dev_priv, pipe);


 assert_panel_unlocked(dev_priv, pipe);

 if (pipe_config->dpll_hw_state.dpll & DPLL_VCO_ENABLE)
  _chv_enable_pll(crtc, pipe_config);

 if (pipe != PIPE_A) {






  I915_WRITE(CBR4_VLV, CBR_DPLLBMD_PIPE(pipe));
  I915_WRITE(DPLL_MD(PIPE_B), pipe_config->dpll_hw_state.dpll_md);
  I915_WRITE(CBR4_VLV, 0);
  dev_priv->chv_dpll_md[pipe] = pipe_config->dpll_hw_state.dpll_md;





  WARN_ON((I915_READ(DPLL(PIPE_B)) & DPLL_VGA_MODE_DIS) == 0);
 } else {
  I915_WRITE(DPLL_MD(pipe), pipe_config->dpll_hw_state.dpll_md);
  POSTING_READ(DPLL_MD(pipe));
 }
}
