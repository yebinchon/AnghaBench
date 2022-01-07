
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_sseu {int dummy; } ;
struct intel_context {TYPE_1__* engine; int pin_mutex; } ;
struct i915_request {int dummy; } ;
struct TYPE_2__ {int kernel_context; } ;


 scalar_t__ IS_ERR (struct i915_request*) ;
 int PTR_ERR (struct i915_request*) ;
 int gen8_emit_rpcs_config (struct i915_request*,struct intel_context*,struct intel_sseu) ;
 int i915_request_add (struct i915_request*) ;
 struct i915_request* i915_request_create (int ) ;
 int intel_context_is_pinned (struct intel_context*) ;
 int intel_context_prepare_remote_request (struct intel_context*,struct i915_request*) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static int
gen8_modify_rpcs(struct intel_context *ce, struct intel_sseu sseu)
{
 struct i915_request *rq;
 int ret;

 lockdep_assert_held(&ce->pin_mutex);







 if (!intel_context_is_pinned(ce))
  return 0;

 rq = i915_request_create(ce->engine->kernel_context);
 if (IS_ERR(rq))
  return PTR_ERR(rq);


 ret = intel_context_prepare_remote_request(ce, rq);
 if (ret == 0)
  ret = gen8_emit_rpcs_config(rq, ce, sseu);

 i915_request_add(rq);
 return ret;
}
