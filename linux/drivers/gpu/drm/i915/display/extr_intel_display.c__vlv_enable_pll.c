
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int dpll; } ;
struct intel_crtc_state {TYPE_2__ dpll_hw_state; } ;
struct TYPE_3__ {int dev; } ;
struct intel_crtc {int pipe; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int DPLL (int) ;
 int DPLL_LOCK_VLV ;
 int DRM_ERROR (char*,int) ;
 int I915_WRITE (int ,int ) ;
 int POSTING_READ (int ) ;
 scalar_t__ intel_de_wait_for_set (struct drm_i915_private*,int ,int ,int) ;
 struct drm_i915_private* to_i915 (int ) ;
 int udelay (int) ;

__attribute__((used)) static void _vlv_enable_pll(struct intel_crtc *crtc,
       const struct intel_crtc_state *pipe_config)
{
 struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 enum pipe pipe = crtc->pipe;

 I915_WRITE(DPLL(pipe), pipe_config->dpll_hw_state.dpll);
 POSTING_READ(DPLL(pipe));
 udelay(150);

 if (intel_de_wait_for_set(dev_priv, DPLL(pipe), DPLL_LOCK_VLV, 1))
  DRM_ERROR("DPLL %d failed to lock\n", pipe);
}
