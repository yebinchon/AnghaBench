
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i915_power_well {int count; TYPE_1__* desc; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_2__ {int name; } ;


 int WARN (int,char*,int ) ;
 int intel_power_well_disable (struct drm_i915_private*,struct i915_power_well*) ;

__attribute__((used)) static void intel_power_well_put(struct drm_i915_private *dev_priv,
     struct i915_power_well *power_well)
{
 WARN(!power_well->count, "Use count on power well %s is already zero",
      power_well->desc->name);

 if (!--power_well->count)
  intel_power_well_disable(dev_priv, power_well);
}
