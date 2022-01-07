
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_context {int dummy; } ;
struct i915_request {int dummy; } ;


 struct i915_request* mock_request (struct intel_context*,int ) ;

__attribute__((used)) static struct i915_request *
__mock_request_alloc(struct intel_context *ce)
{
 return mock_request(ce, 0);
}
