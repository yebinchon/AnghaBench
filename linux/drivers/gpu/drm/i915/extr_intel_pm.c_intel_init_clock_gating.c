
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* init_clock_gating ) (struct drm_i915_private*) ;} ;
struct drm_i915_private {TYPE_1__ display; } ;


 int stub1 (struct drm_i915_private*) ;

void intel_init_clock_gating(struct drm_i915_private *dev_priv)
{
 dev_priv->display.init_clock_gating(dev_priv);
}
