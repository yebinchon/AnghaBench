
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_request {int dummy; } ;


 int __i915_request_has_started (struct i915_request const*) ;
 int i915_request_is_active (struct i915_request const*) ;

__attribute__((used)) static inline bool i915_request_is_running(const struct i915_request *rq)
{
 if (!i915_request_is_active(rq))
  return 0;

 return __i915_request_has_started(rq);
}
