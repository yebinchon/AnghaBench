
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_context {int dummy; } ;
struct TYPE_2__ {unsigned long delay; } ;
struct i915_request {TYPE_1__ mock; } ;


 scalar_t__ IS_ERR (struct i915_request*) ;
 struct i915_request* intel_context_create_request (struct intel_context*) ;

struct i915_request *
mock_request(struct intel_context *ce, unsigned long delay)
{
 struct i915_request *request;


 request = intel_context_create_request(ce);
 if (IS_ERR(request))
  return ((void*)0);

 request->mock.delay = delay;
 return request;
}
