
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_gem_object {int dummy; } ;


 unsigned long I915_GEM_OBJECT_UNBIND_ACTIVE ;
 int I915_MM_SHRINKER ;
 unsigned long I915_SHRINK_ACTIVE ;
 int __i915_gem_object_put_pages (struct drm_i915_gem_object*,int ) ;
 int i915_gem_object_has_pages (struct drm_i915_gem_object*) ;
 scalar_t__ i915_gem_object_unbind (struct drm_i915_gem_object*,unsigned long) ;

__attribute__((used)) static bool unsafe_drop_pages(struct drm_i915_gem_object *obj,
         unsigned long shrink)
{
 unsigned long flags;

 flags = 0;
 if (shrink & I915_SHRINK_ACTIVE)
  flags = I915_GEM_OBJECT_UNBIND_ACTIVE;

 if (i915_gem_object_unbind(obj, flags) == 0)
  __i915_gem_object_put_pages(obj, I915_MM_SHRINKER);

 return !i915_gem_object_has_pages(obj);
}
