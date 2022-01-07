
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct i915_request {TYPE_1__ fence; } ;


 int I915_FENCE_FLAG_ACTIVE ;
 int test_bit (int ,int *) ;

__attribute__((used)) static inline bool i915_request_is_active(const struct i915_request *rq)
{
 return test_bit(I915_FENCE_FLAG_ACTIVE, &rq->fence.flags);
}
