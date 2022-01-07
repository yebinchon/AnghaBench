
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int asle; } ;
struct drm_i915_private {TYPE_1__ opregion; } ;


 scalar_t__ IS_MOBILE (struct drm_i915_private*) ;
 scalar_t__ IS_PINEVIEW (struct drm_i915_private*) ;

__attribute__((used)) static bool i915_has_asle(struct drm_i915_private *dev_priv)
{
 if (!dev_priv->opregion.asle)
  return 0;

 return IS_PINEVIEW(dev_priv) || IS_MOBILE(dev_priv);
}
