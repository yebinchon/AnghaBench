
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_i915_gem_object {TYPE_1__* ops; int base; } ;
struct TYPE_2__ {int (* truncate ) (struct drm_i915_gem_object*) ;} ;


 int drm_gem_free_mmap_offset (int *) ;
 int stub1 (struct drm_i915_gem_object*) ;

void i915_gem_object_truncate(struct drm_i915_gem_object *obj)
{
 drm_gem_free_mmap_offset(&obj->base);
 if (obj->ops->truncate)
  obj->ops->truncate(obj);
}
