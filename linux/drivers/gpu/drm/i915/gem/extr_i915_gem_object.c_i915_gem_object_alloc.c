
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_i915_gem_object {int dummy; } ;
struct TYPE_2__ {int slab_objects; } ;


 int GFP_KERNEL ;
 TYPE_1__ global ;
 struct drm_i915_gem_object* kmem_cache_zalloc (int ,int ) ;

struct drm_i915_gem_object *i915_gem_object_alloc(void)
{
 return kmem_cache_zalloc(global.slab_objects, GFP_KERNEL);
}
