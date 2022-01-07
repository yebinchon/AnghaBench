
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int skl_preferred_vco_freq; } ;


 int intel_update_max_cdclk (struct drm_i915_private*) ;

__attribute__((used)) static void skl_set_preferred_cdclk_vco(struct drm_i915_private *dev_priv,
     int vco)
{
 bool changed = dev_priv->skl_preferred_vco_freq != vco;

 dev_priv->skl_preferred_vco_freq = vco;

 if (changed)
  intel_update_max_cdclk(dev_priv);
}
