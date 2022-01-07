
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hw; int actual; int logical; } ;
struct drm_i915_private {TYPE_1__ cdclk; } ;
struct drm_device {int dummy; } ;


 int intel_dump_cdclk_state (int *,char*) ;
 int intel_update_cdclk (struct drm_i915_private*) ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;

void intel_modeset_init_hw(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = to_i915(dev);

 intel_update_cdclk(dev_priv);
 intel_dump_cdclk_state(&dev_priv->cdclk.hw, "Current CDCLK");
 dev_priv->cdclk.logical = dev_priv->cdclk.actual = dev_priv->cdclk.hw;
}
