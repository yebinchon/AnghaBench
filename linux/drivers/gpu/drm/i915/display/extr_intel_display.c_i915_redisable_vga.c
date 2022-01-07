
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;
typedef int intel_wakeref_t ;


 int POWER_DOMAIN_VGA ;
 int i915_redisable_vga_power_on (struct drm_i915_private*) ;
 int intel_display_power_get_if_enabled (struct drm_i915_private*,int ) ;
 int intel_display_power_put (struct drm_i915_private*,int ,int ) ;

void i915_redisable_vga(struct drm_i915_private *dev_priv)
{
 intel_wakeref_t wakeref;
 wakeref = intel_display_power_get_if_enabled(dev_priv,
           POWER_DOMAIN_VGA);
 if (!wakeref)
  return;

 i915_redisable_vga_power_on(dev_priv);

 intel_display_power_put(dev_priv, POWER_DOMAIN_VGA, wakeref);
}
