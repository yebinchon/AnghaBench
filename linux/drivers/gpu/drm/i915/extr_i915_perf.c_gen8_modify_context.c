
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_context {TYPE_1__* engine; int pin_mutex; } ;
struct i915_request {int dummy; } ;
struct flex {int dummy; } ;
struct TYPE_2__ {int kernel_context; } ;


 scalar_t__ IS_ERR (struct i915_request*) ;
 int PTR_ERR (struct i915_request*) ;
 int gen8_store_flex (struct i915_request*,struct intel_context*,struct flex const*,unsigned int) ;
 int i915_request_add (struct i915_request*) ;
 struct i915_request* i915_request_create (int ) ;
 int intel_context_prepare_remote_request (struct intel_context*,struct i915_request*) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static int gen8_modify_context(struct intel_context *ce,
          const struct flex *flex, unsigned int count)
{
 struct i915_request *rq;
 int err;

 lockdep_assert_held(&ce->pin_mutex);

 rq = i915_request_create(ce->engine->kernel_context);
 if (IS_ERR(rq))
  return PTR_ERR(rq);


 err = intel_context_prepare_remote_request(ce, rq);
 if (err == 0)
  err = gen8_store_flex(rq, ce, flex, count);

 i915_request_add(rq);
 return err;
}
