
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int priority; } ;
struct i915_gem_context {TYPE_1__ sched; } ;
struct drm_i915_private {int dummy; } ;


 struct i915_gem_context* ERR_PTR (int) ;
 int GEM_BUG_ON (int) ;
 int I915_USER_PRIORITY (int) ;
 scalar_t__ IS_ERR (struct i915_gem_context*) ;
 int destroy_kernel_context (struct i915_gem_context**) ;
 int i915_gem_context_clear_bannable (struct i915_gem_context*) ;
 int i915_gem_context_is_kernel (struct i915_gem_context*) ;
 int i915_gem_context_pin_hw_id (struct i915_gem_context*) ;
 struct i915_gem_context* i915_gem_create_context (struct drm_i915_private*,int ) ;

struct i915_gem_context *
i915_gem_context_create_kernel(struct drm_i915_private *i915, int prio)
{
 struct i915_gem_context *ctx;
 int err;

 ctx = i915_gem_create_context(i915, 0);
 if (IS_ERR(ctx))
  return ctx;

 err = i915_gem_context_pin_hw_id(ctx);
 if (err) {
  destroy_kernel_context(&ctx);
  return ERR_PTR(err);
 }

 i915_gem_context_clear_bannable(ctx);
 ctx->sched.priority = I915_USER_PRIORITY(prio);

 GEM_BUG_ON(!i915_gem_context_is_kernel(ctx));

 return ctx;
}
