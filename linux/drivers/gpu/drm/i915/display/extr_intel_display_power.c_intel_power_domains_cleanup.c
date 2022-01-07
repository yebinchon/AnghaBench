
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int power_wells; } ;
struct drm_i915_private {TYPE_1__ power_domains; } ;


 int kfree (int ) ;

void intel_power_domains_cleanup(struct drm_i915_private *dev_priv)
{
 kfree(dev_priv->power_domains.power_wells);
}
