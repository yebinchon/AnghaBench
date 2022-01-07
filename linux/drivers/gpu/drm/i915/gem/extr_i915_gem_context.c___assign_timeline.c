
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_timeline {int dummy; } ;
struct i915_gem_context {int timeline; } ;


 int __apply_timeline ;
 int __set_timeline (int *,struct intel_timeline*) ;
 int context_apply_all (struct i915_gem_context*,int ,struct intel_timeline*) ;

__attribute__((used)) static void __assign_timeline(struct i915_gem_context *ctx,
         struct intel_timeline *timeline)
{
 __set_timeline(&ctx->timeline, timeline);
 context_apply_all(ctx, __apply_timeline, timeline);
}
