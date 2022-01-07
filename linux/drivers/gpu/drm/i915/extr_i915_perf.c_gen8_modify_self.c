
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_context {int dummy; } ;
struct i915_request {int dummy; } ;
struct flex {int dummy; } ;


 scalar_t__ IS_ERR (struct i915_request*) ;
 int PTR_ERR (struct i915_request*) ;
 int gen8_load_flex (struct i915_request*,struct intel_context*,struct flex const*,unsigned int) ;
 int i915_request_add (struct i915_request*) ;
 struct i915_request* i915_request_create (struct intel_context*) ;

__attribute__((used)) static int gen8_modify_self(struct intel_context *ce,
       const struct flex *flex, unsigned int count)
{
 struct i915_request *rq;
 int err;

 rq = i915_request_create(ce);
 if (IS_ERR(rq))
  return PTR_ERR(rq);

 err = gen8_load_flex(rq, ce, flex, count);

 i915_request_add(rq);
 return err;
}
