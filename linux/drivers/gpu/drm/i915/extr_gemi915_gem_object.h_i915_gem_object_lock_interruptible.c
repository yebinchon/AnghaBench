
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int resv; } ;
struct drm_i915_gem_object {TYPE_1__ base; } ;


 int dma_resv_lock_interruptible (int ,int *) ;

__attribute__((used)) static inline int
i915_gem_object_lock_interruptible(struct drm_i915_gem_object *obj)
{
 return dma_resv_lock_interruptible(obj->base.resv, ((void*)0));
}
