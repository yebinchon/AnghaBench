
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_request {int fence; } ;


 int EIO ;
 int dma_fence_set_error (int *,int ) ;
 int i915_request_mark_complete (struct i915_request*) ;
 int i915_request_signaled (struct i915_request*) ;

__attribute__((used)) static void mark_eio(struct i915_request *rq)
{
 if (!i915_request_signaled(rq))
  dma_fence_set_error(&rq->fence, -EIO);
 i915_request_mark_complete(rq);
}
