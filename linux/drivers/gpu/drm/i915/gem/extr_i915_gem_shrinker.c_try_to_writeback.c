
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int madv; } ;
struct drm_i915_gem_object {TYPE_1__ mm; } ;



 unsigned int I915_SHRINK_WRITEBACK ;

 int i915_gem_object_truncate (struct drm_i915_gem_object*) ;
 int i915_gem_object_writeback (struct drm_i915_gem_object*) ;

__attribute__((used)) static void try_to_writeback(struct drm_i915_gem_object *obj,
        unsigned int flags)
{
 switch (obj->mm.madv) {
 case 129:
  i915_gem_object_truncate(obj);
 case 128:
  return;
 }

 if (flags & I915_SHRINK_WRITEBACK)
  i915_gem_object_writeback(obj);
}
