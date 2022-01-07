
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_gem_object {int userfault_count; } ;


 scalar_t__ READ_ONCE (int ) ;

__attribute__((used)) static char get_global_flag(struct drm_i915_gem_object *obj)
{
 return READ_ONCE(obj->userfault_count) ? 'g' : ' ';
}
