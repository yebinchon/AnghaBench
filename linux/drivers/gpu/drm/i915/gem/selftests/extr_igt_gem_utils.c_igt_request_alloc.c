
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_cs {int legacy_idx; } ;
struct intel_context {int dummy; } ;
struct i915_request {int dummy; } ;
struct i915_gem_context {int dummy; } ;


 struct i915_request* ERR_CAST (struct intel_context*) ;
 scalar_t__ IS_ERR (struct intel_context*) ;
 struct intel_context* i915_gem_context_get_engine (struct i915_gem_context*,int ) ;
 struct i915_request* intel_context_create_request (struct intel_context*) ;
 int intel_context_put (struct intel_context*) ;

struct i915_request *
igt_request_alloc(struct i915_gem_context *ctx, struct intel_engine_cs *engine)
{
 struct intel_context *ce;
 struct i915_request *rq;






 ce = i915_gem_context_get_engine(ctx, engine->legacy_idx);
 if (IS_ERR(ce))
  return ERR_CAST(ce);

 rq = intel_context_create_request(ce);
 intel_context_put(ce);

 return rq;
}
