
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct drm_mm_node {int dummy; } ;
struct TYPE_2__ {int stolen_lock; int stolen; } ;
struct drm_i915_private {TYPE_1__ mm; } ;


 int DRM_MM_INSERT_BEST ;
 int ENODEV ;
 int INTEL_GEN (struct drm_i915_private*) ;
 int drm_mm_initialized (int *) ;
 int drm_mm_insert_node_in_range (int *,struct drm_mm_node*,int,unsigned int,int ,int,int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int i915_gem_stolen_insert_node_in_range(struct drm_i915_private *dev_priv,
      struct drm_mm_node *node, u64 size,
      unsigned alignment, u64 start, u64 end)
{
 int ret;

 if (!drm_mm_initialized(&dev_priv->mm.stolen))
  return -ENODEV;


 if (INTEL_GEN(dev_priv) >= 8 && start < 4096)
  start = 4096;

 mutex_lock(&dev_priv->mm.stolen_lock);
 ret = drm_mm_insert_node_in_range(&dev_priv->mm.stolen, node,
       size, alignment, 0,
       start, end, DRM_MM_INSERT_BEST);
 mutex_unlock(&dev_priv->mm.stolen_lock);

 return ret;
}
