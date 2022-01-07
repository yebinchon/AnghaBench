
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ mmu_object; } ;
struct drm_i915_gem_object {TYPE_1__ userptr; } ;


 int i915_gem_userptr_init__mmu_notifier (struct drm_i915_gem_object*,int ) ;

__attribute__((used)) static int
i915_gem_userptr_dmabuf_export(struct drm_i915_gem_object *obj)
{
 if (obj->userptr.mmu_object)
  return 0;

 return i915_gem_userptr_init__mmu_notifier(obj, 0);
}
