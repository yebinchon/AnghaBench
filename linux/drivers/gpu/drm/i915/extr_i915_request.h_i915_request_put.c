
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_request {int fence; } ;


 int dma_fence_put (int *) ;

__attribute__((used)) static inline void
i915_request_put(struct i915_request *rq)
{
 dma_fence_put(&rq->fence);
}
