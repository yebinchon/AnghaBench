
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_crtc {int cpu_fifo_underrun_disabled; } ;
struct drm_i915_private {int irq_lock; } ;
struct drm_device {int dummy; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 scalar_t__ HAS_GMCH (struct drm_i915_private*) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_GEN (struct drm_i915_private*,int) ;
 scalar_t__ IS_GEN_RANGE (struct drm_i915_private*,int,int) ;
 int broadwell_set_fifo_underrun_reporting (struct drm_device*,int,int) ;
 int i9xx_set_fifo_underrun_reporting (struct drm_device*,int,int,int) ;
 struct intel_crtc* intel_get_crtc_for_pipe (struct drm_i915_private*,int) ;
 int ironlake_set_fifo_underrun_reporting (struct drm_device*,int,int) ;
 int ivybridge_set_fifo_underrun_reporting (struct drm_device*,int,int,int) ;
 int lockdep_assert_held (int *) ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;

__attribute__((used)) static bool __intel_set_cpu_fifo_underrun_reporting(struct drm_device *dev,
          enum pipe pipe, bool enable)
{
 struct drm_i915_private *dev_priv = to_i915(dev);
 struct intel_crtc *crtc = intel_get_crtc_for_pipe(dev_priv, pipe);
 bool old;

 lockdep_assert_held(&dev_priv->irq_lock);

 old = !crtc->cpu_fifo_underrun_disabled;
 crtc->cpu_fifo_underrun_disabled = !enable;

 if (HAS_GMCH(dev_priv))
  i9xx_set_fifo_underrun_reporting(dev, pipe, enable, old);
 else if (IS_GEN_RANGE(dev_priv, 5, 6))
  ironlake_set_fifo_underrun_reporting(dev, pipe, enable);
 else if (IS_GEN(dev_priv, 7))
  ivybridge_set_fifo_underrun_reporting(dev, pipe, enable, old);
 else if (INTEL_GEN(dev_priv) >= 8)
  broadwell_set_fifo_underrun_reporting(dev, pipe, enable);

 return old;
}
