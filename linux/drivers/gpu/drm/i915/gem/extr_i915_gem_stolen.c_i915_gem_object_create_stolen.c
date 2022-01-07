
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_mm_node {int dummy; } ;
struct TYPE_2__ {int stolen; } ;
struct drm_i915_private {TYPE_1__ mm; } ;
struct drm_i915_gem_object {int dummy; } ;
typedef int resource_size_t ;


 int GFP_KERNEL ;
 struct drm_i915_gem_object* _i915_gem_object_create_stolen (struct drm_i915_private*,struct drm_mm_node*) ;
 int drm_mm_initialized (int *) ;
 int i915_gem_stolen_insert_node (struct drm_i915_private*,struct drm_mm_node*,int ,int) ;
 int i915_gem_stolen_remove_node (struct drm_i915_private*,struct drm_mm_node*) ;
 int kfree (struct drm_mm_node*) ;
 struct drm_mm_node* kzalloc (int,int ) ;

struct drm_i915_gem_object *
i915_gem_object_create_stolen(struct drm_i915_private *dev_priv,
         resource_size_t size)
{
 struct drm_i915_gem_object *obj;
 struct drm_mm_node *stolen;
 int ret;

 if (!drm_mm_initialized(&dev_priv->mm.stolen))
  return ((void*)0);

 if (size == 0)
  return ((void*)0);

 stolen = kzalloc(sizeof(*stolen), GFP_KERNEL);
 if (!stolen)
  return ((void*)0);

 ret = i915_gem_stolen_insert_node(dev_priv, stolen, size, 4096);
 if (ret) {
  kfree(stolen);
  return ((void*)0);
 }

 obj = _i915_gem_object_create_stolen(dev_priv, stolen);
 if (obj)
  return obj;

 i915_gem_stolen_remove_node(dev_priv, stolen);
 kfree(stolen);
 return ((void*)0);
}
