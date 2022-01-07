
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_crtc {int pipe; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_crtc {int state; struct drm_device* dev; } ;


 scalar_t__ HAS_GMCH (struct drm_i915_private*) ;
 scalar_t__ IS_GEN (struct drm_i915_private*,int) ;
 int hsw_disable_ips (int ) ;
 int intel_set_cpu_fifo_underrun_reporting (struct drm_i915_private*,int,int) ;
 scalar_t__ intel_set_memory_cxsr (struct drm_i915_private*,int) ;
 int intel_wait_for_vblank (struct drm_i915_private*,int) ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;
 struct intel_crtc* to_intel_crtc (struct drm_crtc*) ;
 int to_intel_crtc_state (int ) ;

__attribute__((used)) static void
intel_pre_disable_primary_noatomic(struct drm_crtc *crtc)
{
 struct drm_device *dev = crtc->dev;
 struct drm_i915_private *dev_priv = to_i915(dev);
 struct intel_crtc *intel_crtc = to_intel_crtc(crtc);
 int pipe = intel_crtc->pipe;





 if (IS_GEN(dev_priv, 2))
  intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, 0);

 hsw_disable_ips(to_intel_crtc_state(crtc->state));
 if (HAS_GMCH(dev_priv) &&
     intel_set_memory_cxsr(dev_priv, 0))
  intel_wait_for_vblank(dev_priv, pipe);
}
