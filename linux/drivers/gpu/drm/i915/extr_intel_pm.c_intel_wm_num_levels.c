
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_level; } ;
struct drm_i915_private {TYPE_1__ wm; } ;



__attribute__((used)) static int intel_wm_num_levels(struct drm_i915_private *dev_priv)
{
 return dev_priv->wm.max_level + 1;
}
