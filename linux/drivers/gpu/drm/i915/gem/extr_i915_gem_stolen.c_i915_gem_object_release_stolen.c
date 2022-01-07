
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_mm_node {int dummy; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_2__ {int dev; } ;
struct drm_i915_gem_object {int stolen; TYPE_1__ base; } ;


 int GEM_BUG_ON (int) ;
 struct drm_mm_node* fetch_and_zero (int *) ;
 int i915_gem_stolen_remove_node (struct drm_i915_private*,struct drm_mm_node*) ;
 int kfree (struct drm_mm_node*) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static void
i915_gem_object_release_stolen(struct drm_i915_gem_object *obj)
{
 struct drm_i915_private *dev_priv = to_i915(obj->base.dev);
 struct drm_mm_node *stolen = fetch_and_zero(&obj->stolen);

 GEM_BUG_ON(!stolen);

 i915_gem_stolen_remove_node(dev_priv, stolen);
 kfree(stolen);
}
