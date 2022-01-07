
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_gem_object {int dummy; } ;


 int CAP_SYS_ADMIN ;
 int ENODEV ;
 int EPERM ;
 unsigned int I915_USERPTR_UNSYNCHRONIZED ;
 int capable (int ) ;

__attribute__((used)) static int
i915_gem_userptr_init__mmu_notifier(struct drm_i915_gem_object *obj,
        unsigned flags)
{
 if ((flags & I915_USERPTR_UNSYNCHRONIZED) == 0)
  return -ENODEV;

 if (!capable(CAP_SYS_ADMIN))
  return -EPERM;

 return 0;
}
