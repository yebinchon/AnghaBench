
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct i915_request {TYPE_1__ fence; } ;


 int DMA_FENCE_FLAG_SIGNALED_BIT ;
 int test_bit (int ,int *) ;

__attribute__((used)) static inline bool i915_request_signaled(const struct i915_request *rq)
{

 return test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &rq->fence.flags);
}
