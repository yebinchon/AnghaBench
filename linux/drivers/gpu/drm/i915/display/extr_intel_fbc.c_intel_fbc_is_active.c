
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int active; } ;
struct drm_i915_private {TYPE_1__ fbc; } ;



bool intel_fbc_is_active(struct drm_i915_private *dev_priv)
{
 return dev_priv->fbc.active;
}
