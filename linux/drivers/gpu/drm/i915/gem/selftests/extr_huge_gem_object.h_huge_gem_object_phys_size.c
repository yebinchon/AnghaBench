
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_gem_object {int scratch; } ;
typedef int phys_addr_t ;



__attribute__((used)) static inline phys_addr_t
huge_gem_object_phys_size(struct drm_i915_gem_object *obj)
{
 return obj->scratch;
}
