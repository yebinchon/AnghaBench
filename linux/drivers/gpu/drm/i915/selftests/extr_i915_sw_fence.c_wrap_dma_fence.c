
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_sw_fence {int dummy; } ;
struct dma_fence {int dummy; } ;


 int ENOMEM ;
 struct i915_sw_fence* ERR_PTR (int) ;
 int GFP_NOWAIT ;
 struct i915_sw_fence* alloc_fence () ;
 int free_fence (struct i915_sw_fence*) ;
 int i915_sw_fence_await_dma_fence (struct i915_sw_fence*,struct dma_fence*,unsigned long,int ) ;
 int i915_sw_fence_commit (struct i915_sw_fence*) ;

__attribute__((used)) static struct i915_sw_fence *
wrap_dma_fence(struct dma_fence *dma, unsigned long delay)
{
 struct i915_sw_fence *fence;
 int err;

 fence = alloc_fence();
 if (!fence)
  return ERR_PTR(-ENOMEM);

 err = i915_sw_fence_await_dma_fence(fence, dma, delay, GFP_NOWAIT);
 i915_sw_fence_commit(fence);
 if (err < 0) {
  free_fence(fence);
  return ERR_PTR(err);
 }

 return fence;
}
