
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i915_request {int semaphore; int submit; } ;
struct dma_fence {int dummy; } ;
struct TYPE_2__ {int slab_requests; } ;


 TYPE_1__ global ;
 int i915_sw_fence_fini (int *) ;
 int kmem_cache_free (int ,struct i915_request*) ;
 struct i915_request* to_request (struct dma_fence*) ;

__attribute__((used)) static void i915_fence_release(struct dma_fence *fence)
{
 struct i915_request *rq = to_request(fence);
 i915_sw_fence_fini(&rq->submit);
 i915_sw_fence_fini(&rq->semaphore);

 kmem_cache_free(global.slab_requests, rq);
}
