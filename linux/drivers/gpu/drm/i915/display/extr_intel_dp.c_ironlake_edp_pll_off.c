
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_dp {int DP; } ;
struct TYPE_3__ {int crtc; } ;
struct intel_crtc_state {TYPE_1__ base; } ;
struct TYPE_4__ {int dev; } ;
struct intel_crtc {int pipe; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;


 int DP_A ;
 int DP_PLL_ENABLE ;
 int DRM_DEBUG_KMS (char*) ;
 int I915_WRITE (int ,int ) ;
 int POSTING_READ (int ) ;
 int assert_dp_port_disabled (struct intel_dp*) ;
 int assert_edp_pll_enabled (struct drm_i915_private*) ;
 int assert_pipe_disabled (struct drm_i915_private*,int ) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_crtc* to_intel_crtc (int ) ;
 int udelay (int) ;

__attribute__((used)) static void ironlake_edp_pll_off(struct intel_dp *intel_dp,
     const struct intel_crtc_state *old_crtc_state)
{
 struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->base.crtc);
 struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);

 assert_pipe_disabled(dev_priv, crtc->pipe);
 assert_dp_port_disabled(intel_dp);
 assert_edp_pll_enabled(dev_priv);

 DRM_DEBUG_KMS("disabling eDP PLL\n");

 intel_dp->DP &= ~DP_PLL_ENABLE;

 I915_WRITE(DP_A, intel_dp->DP);
 POSTING_READ(DP_A);
 udelay(200);
}
