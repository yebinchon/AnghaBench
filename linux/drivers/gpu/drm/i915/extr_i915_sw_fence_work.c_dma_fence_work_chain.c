
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_fence_work {int cb; int chain; } ;
struct dma_fence {int dummy; } ;


 int __i915_sw_fence_await_dma_fence (int *,struct dma_fence*,int *) ;

int dma_fence_work_chain(struct dma_fence_work *f, struct dma_fence *signal)
{
 if (!signal)
  return 0;

 return __i915_sw_fence_await_dma_fence(&f->chain, signal, &f->cb);
}
