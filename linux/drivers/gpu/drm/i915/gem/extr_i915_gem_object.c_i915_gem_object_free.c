
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_i915_gem_object {int dummy; } ;
struct TYPE_2__ {int slab_objects; } ;


 TYPE_1__ global ;
 void kmem_cache_free (int ,struct drm_i915_gem_object*) ;

void i915_gem_object_free(struct drm_i915_gem_object *obj)
{
 return kmem_cache_free(global.slab_objects, obj);
}
