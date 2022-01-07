
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_request {int flags; } ;


 int I915_REQUEST_NOPREEMPT ;
 int unlikely (int) ;

__attribute__((used)) static inline bool i915_request_has_nopreempt(const struct i915_request *rq)
{

 return unlikely(rq->flags & I915_REQUEST_NOPREEMPT);
}
