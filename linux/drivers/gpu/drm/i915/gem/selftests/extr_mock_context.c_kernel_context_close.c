
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_gem_context {int dummy; } ;


 int context_close (struct i915_gem_context*) ;

void kernel_context_close(struct i915_gem_context *ctx)
{
 context_close(ctx);
}
