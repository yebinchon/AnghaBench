
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_gem_object {int dummy; } ;


 unsigned long PAGE_SHIFT ;
 unsigned long huge_gem_object_phys_size (struct drm_i915_gem_object*) ;

__attribute__((used)) static unsigned long real_page_count(struct drm_i915_gem_object *obj)
{
 return huge_gem_object_phys_size(obj) >> PAGE_SHIFT;
}
