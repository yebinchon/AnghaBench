
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_request {int fence; } ;


 int dma_fence_get_rcu (int *) ;
 struct i915_request* to_request (int ) ;

__attribute__((used)) static inline struct i915_request *
i915_request_get_rcu(struct i915_request *rq)
{
 return to_request(dma_fence_get_rcu(&rq->fence));
}
