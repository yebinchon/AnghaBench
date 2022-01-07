
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_gem_object {int dummy; } ;


 int i915_gem_object_unlock (struct drm_i915_gem_object*) ;
 int i915_gem_object_unpin_pages (struct drm_i915_gem_object*) ;

__attribute__((used)) static inline void
i915_gem_object_finish_access(struct drm_i915_gem_object *obj)
{
 i915_gem_object_unpin_pages(obj);
 i915_gem_object_unlock(obj);
}
