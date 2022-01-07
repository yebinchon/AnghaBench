
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ mapping; } ;
struct drm_i915_gem_object {TYPE_1__ mm; } ;



__attribute__((used)) static char get_pin_mapped_flag(struct drm_i915_gem_object *obj)
{
 return obj->mm.mapping ? 'M' : ' ';
}
