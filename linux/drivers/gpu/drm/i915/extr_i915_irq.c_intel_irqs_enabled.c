
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int irqs_enabled; } ;
struct drm_i915_private {TYPE_1__ runtime_pm; } ;



bool intel_irqs_enabled(struct drm_i915_private *dev_priv)
{




 return dev_priv->runtime_pm.irqs_enabled;
}
