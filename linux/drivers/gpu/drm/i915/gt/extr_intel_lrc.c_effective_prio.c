
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_request {int dummy; } ;


 int BUILD_BUG_ON (int) ;
 int I915_PRIORITY_MASK ;
 int I915_PRIORITY_NOSEMAPHORE ;
 int I915_PRIORITY_UNPREEMPTABLE ;
 int __NO_PREEMPTION ;
 scalar_t__ __i915_request_has_started (struct i915_request const*) ;
 scalar_t__ i915_request_has_nopreempt (struct i915_request const*) ;
 int rq_prio (struct i915_request const*) ;

__attribute__((used)) static int effective_prio(const struct i915_request *rq)
{
 int prio = rq_prio(rq);
 if (i915_request_has_nopreempt(rq))
  prio = I915_PRIORITY_UNPREEMPTABLE;







 if (__i915_request_has_started(rq))
  prio |= I915_PRIORITY_NOSEMAPHORE;


 BUILD_BUG_ON(__NO_PREEMPTION & ~I915_PRIORITY_MASK);
 return prio | __NO_PREEMPTION;
}
