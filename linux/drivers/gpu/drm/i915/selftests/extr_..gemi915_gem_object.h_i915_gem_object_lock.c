
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int resv; } ;
struct drm_i915_gem_object {TYPE_1__ base; } ;


 int dma_resv_lock (int ,int *) ;

__attribute__((used)) static inline void i915_gem_object_lock(struct drm_i915_gem_object *obj)
{
 dma_resv_lock(obj->base.resv, ((void*)0));
}
