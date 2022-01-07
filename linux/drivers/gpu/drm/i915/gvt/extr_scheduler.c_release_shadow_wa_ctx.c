
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * shadow_va; int * obj; } ;
struct intel_shadow_wa_ctx {TYPE_1__ indirect_ctx; } ;


 int i915_gem_object_put (int *) ;
 int i915_gem_object_unpin_map (int *) ;

__attribute__((used)) static void release_shadow_wa_ctx(struct intel_shadow_wa_ctx *wa_ctx)
{
 if (!wa_ctx->indirect_ctx.obj)
  return;

 i915_gem_object_unpin_map(wa_ctx->indirect_ctx.obj);
 i915_gem_object_put(wa_ctx->indirect_ctx.obj);

 wa_ctx->indirect_ctx.obj = ((void*)0);
 wa_ctx->indirect_ctx.shadow_va = ((void*)0);
}
