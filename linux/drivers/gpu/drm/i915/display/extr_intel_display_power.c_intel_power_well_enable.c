
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct i915_power_well {int hw_enabled; TYPE_2__* desc; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_4__ {TYPE_1__* ops; int name; } ;
struct TYPE_3__ {int (* enable ) (struct drm_i915_private*,struct i915_power_well*) ;} ;


 int DRM_DEBUG_KMS (char*,int ) ;
 int stub1 (struct drm_i915_private*,struct i915_power_well*) ;

__attribute__((used)) static void intel_power_well_enable(struct drm_i915_private *dev_priv,
        struct i915_power_well *power_well)
{
 DRM_DEBUG_KMS("enabling %s\n", power_well->desc->name);
 power_well->desc->ops->enable(dev_priv, power_well);
 power_well->hw_enabled = 1;
}
