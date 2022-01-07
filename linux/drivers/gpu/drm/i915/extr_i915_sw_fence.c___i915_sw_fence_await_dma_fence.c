
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_sw_fence {int dummy; } ;
struct i915_sw_dma_fence_cb {int base; struct i915_sw_fence* fence; } ;
struct dma_fence {int dummy; } ;


 int ENOENT ;
 int __dma_i915_sw_fence_wake (struct dma_fence*,int *) ;
 int debug_fence_assert (struct i915_sw_fence*) ;
 int dma_fence_add_callback (struct dma_fence*,int *,int (*) (struct dma_fence*,int *)) ;
 scalar_t__ dma_fence_is_signaled (struct dma_fence*) ;
 int i915_sw_fence_await (struct i915_sw_fence*) ;

int __i915_sw_fence_await_dma_fence(struct i915_sw_fence *fence,
        struct dma_fence *dma,
        struct i915_sw_dma_fence_cb *cb)
{
 int ret;

 debug_fence_assert(fence);

 if (dma_fence_is_signaled(dma))
  return 0;

 cb->fence = fence;
 i915_sw_fence_await(fence);

 ret = dma_fence_add_callback(dma, &cb->base, __dma_i915_sw_fence_wake);
 if (ret == 0) {
  ret = 1;
 } else {
  __dma_i915_sw_fence_wake(dma, &cb->base);
  if (ret == -ENOENT)
   ret = 0;
 }

 return ret;
}
