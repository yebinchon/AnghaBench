
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int filp; } ;
struct drm_i915_gem_object {TYPE_1__ base; } ;


 int fput (int ) ;

__attribute__((used)) static void phys_release(struct drm_i915_gem_object *obj)
{
 fput(obj->base.filp);
}
