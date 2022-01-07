
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int asle_work; scalar_t__ asle; } ;
struct drm_i915_private {TYPE_1__ opregion; } ;


 int schedule_work (int *) ;

void intel_opregion_asle_intr(struct drm_i915_private *dev_priv)
{
 if (dev_priv->opregion.asle)
  schedule_work(&dev_priv->opregion.asle_work);
}
