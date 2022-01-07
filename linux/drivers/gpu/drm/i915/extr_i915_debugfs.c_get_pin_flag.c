
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_gem_object {scalar_t__ pin_global; } ;



__attribute__((used)) static char get_pin_flag(struct drm_i915_gem_object *obj)
{
 return obj->pin_global ? 'p' : ' ';
}
