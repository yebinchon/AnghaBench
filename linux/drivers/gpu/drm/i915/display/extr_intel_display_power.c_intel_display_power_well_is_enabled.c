
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct i915_power_well {TYPE_2__* desc; } ;
struct drm_i915_private {int dummy; } ;
typedef enum i915_power_well_id { ____Placeholder_i915_power_well_id } i915_power_well_id ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* is_enabled ) (struct drm_i915_private*,struct i915_power_well*) ;} ;


 struct i915_power_well* lookup_power_well (struct drm_i915_private*,int) ;
 int stub1 (struct drm_i915_private*,struct i915_power_well*) ;

bool intel_display_power_well_is_enabled(struct drm_i915_private *dev_priv,
      enum i915_power_well_id power_well_id)
{
 struct i915_power_well *power_well;
 bool ret;

 power_well = lookup_power_well(dev_priv, power_well_id);
 ret = power_well->desc->ops->is_enabled(dev_priv, power_well);

 return ret;
}
