
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_gem_context {int dummy; } ;


 int GEM_BUG_ON (int) ;
 int context_close (struct i915_gem_context*) ;
 int fetch_and_zero (struct i915_gem_context**) ;
 int i915_gem_context_free (struct i915_gem_context*) ;
 struct i915_gem_context* i915_gem_context_get (int ) ;
 int i915_gem_context_is_kernel (struct i915_gem_context*) ;

__attribute__((used)) static void
destroy_kernel_context(struct i915_gem_context **ctxp)
{
 struct i915_gem_context *ctx;


 ctx = i915_gem_context_get(fetch_and_zero(ctxp));
 GEM_BUG_ON(!i915_gem_context_is_kernel(ctx));

 context_close(ctx);
 i915_gem_context_free(ctx);
}
