
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_crtc_state {int dummy; } ;
struct intel_crtc {int pipe; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_crtc {struct drm_device* dev; } ;


 scalar_t__ IS_GEN (struct drm_i915_private*,int) ;
 int intel_check_cpu_fifo_underruns (struct drm_i915_private*) ;
 int intel_check_pch_fifo_underruns (struct drm_i915_private*) ;
 int intel_set_cpu_fifo_underrun_reporting (struct drm_i915_private*,int,int) ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;
 struct intel_crtc* to_intel_crtc (struct drm_crtc*) ;

__attribute__((used)) static void
intel_post_enable_primary(struct drm_crtc *crtc,
     const struct intel_crtc_state *new_crtc_state)
{
 struct drm_device *dev = crtc->dev;
 struct drm_i915_private *dev_priv = to_i915(dev);
 struct intel_crtc *intel_crtc = to_intel_crtc(crtc);
 int pipe = intel_crtc->pipe;
 if (IS_GEN(dev_priv, 2))
  intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe, 1);


 intel_check_cpu_fifo_underruns(dev_priv);
 intel_check_pch_fifo_underruns(dev_priv);
}
