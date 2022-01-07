
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_i915_gem_object {int dummy; } ;
struct TYPE_3__ {int purge_list; } ;
struct TYPE_4__ {TYPE_1__ mm; } ;


 int __i915_gem_object_make_shrinkable (struct drm_i915_gem_object*,int *) ;
 TYPE_2__* obj_to_i915 (struct drm_i915_gem_object*) ;

void i915_gem_object_make_purgeable(struct drm_i915_gem_object *obj)
{
 __i915_gem_object_make_shrinkable(obj,
       &obj_to_i915(obj)->mm.purge_list);
}
