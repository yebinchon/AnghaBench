
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_context {int dummy; } ;
struct i915_request {int dummy; } ;


 struct i915_request* intel_context_create_request (struct intel_context*) ;

__attribute__((used)) static struct i915_request *
__live_request_alloc(struct intel_context *ce)
{
 return intel_context_create_request(ce);
}
