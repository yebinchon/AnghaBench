
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_gem_object {int pin_global; } ;


 int READ_ONCE (int ) ;
 int __i915_gem_object_flush_for_display (struct drm_i915_gem_object*) ;
 int i915_gem_object_lock (struct drm_i915_gem_object*) ;
 int i915_gem_object_unlock (struct drm_i915_gem_object*) ;

void i915_gem_object_flush_if_display(struct drm_i915_gem_object *obj)
{
 if (!READ_ONCE(obj->pin_global))
  return;

 i915_gem_object_lock(obj);
 __i915_gem_object_flush_for_display(obj);
 i915_gem_object_unlock(obj);
}
