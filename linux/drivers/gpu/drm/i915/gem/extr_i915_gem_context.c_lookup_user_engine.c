
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_cs {int legacy_idx; } ;
struct intel_context {int dummy; } ;
struct i915_gem_context {int i915; } ;
struct i915_engine_class_instance {int engine_instance; int engine_class; } ;


 int EINVAL ;
 struct intel_context* ERR_PTR (int ) ;
 unsigned long LOOKUP_USER_INDEX ;
 struct intel_context* i915_gem_context_get_engine (struct i915_gem_context*,int) ;
 int i915_gem_context_user_engines (struct i915_gem_context*) ;
 struct intel_engine_cs* intel_engine_lookup_user (int ,int ,int) ;

__attribute__((used)) static struct intel_context *
lookup_user_engine(struct i915_gem_context *ctx,
     unsigned long flags,
     const struct i915_engine_class_instance *ci)

{
 int idx;

 if (!!(flags & BIT(0)) != i915_gem_context_user_engines(ctx))
  return ERR_PTR(-EINVAL);

 if (!i915_gem_context_user_engines(ctx)) {
  struct intel_engine_cs *engine;

  engine = intel_engine_lookup_user(ctx->i915,
        ci->engine_class,
        ci->engine_instance);
  if (!engine)
   return ERR_PTR(-EINVAL);

  idx = engine->legacy_idx;
 } else {
  idx = ci->engine_instance;
 }

 return i915_gem_context_get_engine(ctx, idx);
}
