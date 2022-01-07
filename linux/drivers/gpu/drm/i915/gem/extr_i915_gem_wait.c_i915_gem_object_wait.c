
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int resv; } ;
struct drm_i915_gem_object {TYPE_1__ base; } ;


 int GEM_BUG_ON (int) ;
 long i915_gem_object_wait_reservation (int ,unsigned int,long) ;
 int might_sleep () ;

int
i915_gem_object_wait(struct drm_i915_gem_object *obj,
       unsigned int flags,
       long timeout)
{
 might_sleep();
 GEM_BUG_ON(timeout < 0);

 timeout = i915_gem_object_wait_reservation(obj->base.resv,
         flags, timeout);
 return timeout < 0 ? timeout : 0;
}
