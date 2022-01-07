
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int stolen; } ;
struct drm_i915_private {TYPE_1__ mm; } ;


 int drm_mm_initialized (int *) ;
 int drm_mm_takedown (int *) ;

void i915_gem_cleanup_stolen(struct drm_i915_private *dev_priv)
{
 if (!drm_mm_initialized(&dev_priv->mm.stolen))
  return;

 drm_mm_takedown(&dev_priv->mm.stolen);
}
