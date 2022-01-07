
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {scalar_t__ audio_power_refcount; } ;
struct device {int dummy; } ;


 scalar_t__ IS_CANNONLAKE (struct drm_i915_private*) ;
 scalar_t__ IS_GEMINILAKE (struct drm_i915_private*) ;
 int POWER_DOMAIN_AUDIO ;
 int glk_force_audio_cdclk (struct drm_i915_private*,int) ;
 int intel_display_power_put (struct drm_i915_private*,int ,unsigned long) ;
 struct drm_i915_private* kdev_to_i915 (struct device*) ;

__attribute__((used)) static void i915_audio_component_put_power(struct device *kdev,
        unsigned long cookie)
{
 struct drm_i915_private *dev_priv = kdev_to_i915(kdev);


 if (--dev_priv->audio_power_refcount == 0)
  if (IS_CANNONLAKE(dev_priv) || IS_GEMINILAKE(dev_priv))
   glk_force_audio_cdclk(dev_priv, 0);

 intel_display_power_put(dev_priv, POWER_DOMAIN_AUDIO, cookie);
}
