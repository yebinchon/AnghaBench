
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_resv {int dummy; } ;
struct dma_fence {int dummy; } ;


 unsigned int I915_WAIT_ALL ;
 int dma_fence_put (struct dma_fence*) ;
 int dma_resv_add_excl_fence (struct dma_resv*,int *) ;
 struct dma_fence* dma_resv_get_excl_rcu (struct dma_resv*) ;
 int dma_resv_get_fences_rcu (struct dma_resv*,struct dma_fence**,unsigned int*,struct dma_fence***) ;
 scalar_t__ dma_resv_test_signaled_rcu (struct dma_resv*,int) ;
 scalar_t__ dma_resv_trylock (struct dma_resv*) ;
 int dma_resv_unlock (struct dma_resv*) ;
 long i915_gem_object_wait_fence (struct dma_fence*,unsigned int,long) ;
 int kfree (struct dma_fence**) ;

__attribute__((used)) static long
i915_gem_object_wait_reservation(struct dma_resv *resv,
     unsigned int flags,
     long timeout)
{
 struct dma_fence *excl;
 bool prune_fences = 0;

 if (flags & I915_WAIT_ALL) {
  struct dma_fence **shared;
  unsigned int count, i;
  int ret;

  ret = dma_resv_get_fences_rcu(resv,
       &excl, &count, &shared);
  if (ret)
   return ret;

  for (i = 0; i < count; i++) {
   timeout = i915_gem_object_wait_fence(shared[i],
            flags, timeout);
   if (timeout < 0)
    break;

   dma_fence_put(shared[i]);
  }

  for (; i < count; i++)
   dma_fence_put(shared[i]);
  kfree(shared);
  prune_fences = count && timeout >= 0;
 } else {
  excl = dma_resv_get_excl_rcu(resv);
 }

 if (excl && timeout >= 0)
  timeout = i915_gem_object_wait_fence(excl, flags, timeout);

 dma_fence_put(excl);





 if (prune_fences && dma_resv_trylock(resv)) {
  if (dma_resv_test_signaled_rcu(resv, 1))
   dma_resv_add_excl_fence(resv, ((void*)0));
  dma_resv_unlock(resv);
 }

 return timeout;
}
