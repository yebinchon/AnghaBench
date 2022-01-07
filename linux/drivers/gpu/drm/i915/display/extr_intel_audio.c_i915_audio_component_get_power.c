
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int audio_power_refcount; } ;
struct device {int dummy; } ;
typedef unsigned long intel_wakeref_t ;


 int BUILD_BUG_ON (int) ;
 scalar_t__ IS_CANNONLAKE (struct drm_i915_private*) ;
 scalar_t__ IS_GEMINILAKE (struct drm_i915_private*) ;
 int POWER_DOMAIN_AUDIO ;
 int glk_force_audio_cdclk (struct drm_i915_private*,int) ;
 unsigned long intel_display_power_get (struct drm_i915_private*,int ) ;
 struct drm_i915_private* kdev_to_i915 (struct device*) ;

__attribute__((used)) static unsigned long i915_audio_component_get_power(struct device *kdev)
{
 struct drm_i915_private *dev_priv = kdev_to_i915(kdev);
 intel_wakeref_t ret;


 BUILD_BUG_ON(sizeof(intel_wakeref_t) > sizeof(unsigned long));

 ret = intel_display_power_get(dev_priv, POWER_DOMAIN_AUDIO);


 if (dev_priv->audio_power_refcount++ == 0)
  if (IS_CANNONLAKE(dev_priv) || IS_GEMINILAKE(dev_priv))
   glk_force_audio_cdclk(dev_priv, 1);

 return ret;
}
