
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int crtc; } ;
struct intel_crtc_state {int ips_enabled; TYPE_1__ base; } ;
struct TYPE_4__ {struct drm_device* dev; } ;
struct intel_crtc {int pipe; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {int dummy; } ;


 int DISPLAY_IPS_CONTROL ;
 int DRM_ERROR (char*) ;
 int I915_WRITE (int ,int ) ;
 int IPS_CTL ;
 int IPS_ENABLE ;
 scalar_t__ IS_BROADWELL (struct drm_i915_private*) ;
 int POSTING_READ (int ) ;
 int WARN_ON (int ) ;
 scalar_t__ intel_de_wait_for_clear (struct drm_i915_private*,int ,int ,int) ;
 int intel_wait_for_vblank (struct drm_i915_private*,int ) ;
 int sandybridge_pcode_write (struct drm_i915_private*,int ,int ) ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;
 struct intel_crtc* to_intel_crtc (int ) ;

void hsw_disable_ips(const struct intel_crtc_state *crtc_state)
{
 struct intel_crtc *crtc = to_intel_crtc(crtc_state->base.crtc);
 struct drm_device *dev = crtc->base.dev;
 struct drm_i915_private *dev_priv = to_i915(dev);

 if (!crtc_state->ips_enabled)
  return;

 if (IS_BROADWELL(dev_priv)) {
  WARN_ON(sandybridge_pcode_write(dev_priv, DISPLAY_IPS_CONTROL, 0));





  if (intel_de_wait_for_clear(dev_priv, IPS_CTL, IPS_ENABLE, 100))
   DRM_ERROR("Timed out waiting for IPS disable\n");
 } else {
  I915_WRITE(IPS_CTL, 0);
  POSTING_READ(IPS_CTL);
 }


 intel_wait_for_vblank(dev_priv, crtc->pipe);
}
