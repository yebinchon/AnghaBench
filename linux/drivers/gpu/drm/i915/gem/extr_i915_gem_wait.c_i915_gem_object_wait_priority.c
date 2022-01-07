
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i915_sched_attr {int dummy; } ;
struct TYPE_2__ {int resv; } ;
struct drm_i915_gem_object {TYPE_1__ base; } ;
struct dma_fence {int dummy; } ;


 unsigned int I915_WAIT_ALL ;
 int dma_fence_put (struct dma_fence*) ;
 struct dma_fence* dma_resv_get_excl_rcu (int ) ;
 int dma_resv_get_fences_rcu (int ,struct dma_fence**,unsigned int*,struct dma_fence***) ;
 int fence_set_priority (struct dma_fence*,struct i915_sched_attr const*) ;
 int kfree (struct dma_fence**) ;

int
i915_gem_object_wait_priority(struct drm_i915_gem_object *obj,
         unsigned int flags,
         const struct i915_sched_attr *attr)
{
 struct dma_fence *excl;

 if (flags & I915_WAIT_ALL) {
  struct dma_fence **shared;
  unsigned int count, i;
  int ret;

  ret = dma_resv_get_fences_rcu(obj->base.resv,
       &excl, &count, &shared);
  if (ret)
   return ret;

  for (i = 0; i < count; i++) {
   fence_set_priority(shared[i], attr);
   dma_fence_put(shared[i]);
  }

  kfree(shared);
 } else {
  excl = dma_resv_get_excl_rcu(obj->base.resv);
 }

 if (excl) {
  fence_set_priority(excl, attr);
  dma_fence_put(excl);
 }
 return 0;
}
