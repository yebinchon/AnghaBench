
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_request {int flags; } ;


 int I915_REQUEST_WAITBOOST ;

__attribute__((used)) static inline bool i915_request_has_waitboost(const struct i915_request *rq)
{
 return rq->flags & I915_REQUEST_WAITBOOST;
}
