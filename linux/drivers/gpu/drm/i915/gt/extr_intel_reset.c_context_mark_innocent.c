
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_gem_context {int active_count; } ;


 int atomic_inc (int *) ;

__attribute__((used)) static void context_mark_innocent(struct i915_gem_context *ctx)
{
 atomic_inc(&ctx->active_count);
}
