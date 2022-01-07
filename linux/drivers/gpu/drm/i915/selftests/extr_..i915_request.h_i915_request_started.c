
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_request {int dummy; } ;


 int __i915_request_has_started (struct i915_request const*) ;
 scalar_t__ i915_request_signaled (struct i915_request const*) ;

__attribute__((used)) static inline bool i915_request_started(const struct i915_request *rq)
{
 if (i915_request_signaled(rq))
  return 1;


 return __i915_request_has_started(rq);
}
