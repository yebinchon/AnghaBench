
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_mm_node {int dummy; } ;
struct TYPE_2__ {int stolen_lock; } ;
struct drm_i915_private {TYPE_1__ mm; } ;


 int drm_mm_remove_node (struct drm_mm_node*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void i915_gem_stolen_remove_node(struct drm_i915_private *dev_priv,
     struct drm_mm_node *node)
{
 mutex_lock(&dev_priv->mm.stolen_lock);
 drm_mm_remove_node(node);
 mutex_unlock(&dev_priv->mm.stolen_lock);
}
