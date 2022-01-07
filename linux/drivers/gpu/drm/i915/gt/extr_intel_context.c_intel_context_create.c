
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_cs {int dummy; } ;
struct intel_context {int dummy; } ;
struct i915_gem_context {int dummy; } ;


 int ENOMEM ;
 struct intel_context* ERR_PTR (int ) ;
 struct intel_context* intel_context_alloc () ;
 int intel_context_init (struct intel_context*,struct i915_gem_context*,struct intel_engine_cs*) ;

struct intel_context *
intel_context_create(struct i915_gem_context *ctx,
       struct intel_engine_cs *engine)
{
 struct intel_context *ce;

 ce = intel_context_alloc();
 if (!ce)
  return ERR_PTR(-ENOMEM);

 intel_context_init(ce, ctx, engine);
 return ce;
}
