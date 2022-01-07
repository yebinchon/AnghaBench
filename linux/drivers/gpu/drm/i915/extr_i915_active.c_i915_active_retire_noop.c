
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_request {int dummy; } ;
struct i915_active_request {int dummy; } ;



void i915_active_retire_noop(struct i915_active_request *active,
        struct i915_request *request)
{

}
