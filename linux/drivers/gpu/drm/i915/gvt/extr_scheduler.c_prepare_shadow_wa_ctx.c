
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int shadow_gma; } ;
struct TYPE_4__ {int size; int shadow_gma; int obj; scalar_t__ shadow_va; } ;
struct intel_shadow_wa_ctx {TYPE_1__ per_ctx; TYPE_2__ indirect_ctx; } ;
struct i915_vma {int dummy; } ;


 int CACHELINE_BYTES ;
 scalar_t__ IS_ERR (struct i915_vma*) ;
 int PTR_ERR (struct i915_vma*) ;
 struct i915_vma* i915_gem_object_ggtt_pin (int ,int *,int ,int ,int ) ;
 int i915_ggtt_offset (struct i915_vma*) ;
 int memset (unsigned char*,int ,int ) ;
 int update_wa_ctx_2_shadow_ctx (struct intel_shadow_wa_ctx*) ;

__attribute__((used)) static int prepare_shadow_wa_ctx(struct intel_shadow_wa_ctx *wa_ctx)
{
 struct i915_vma *vma;
 unsigned char *per_ctx_va =
  (unsigned char *)wa_ctx->indirect_ctx.shadow_va +
  wa_ctx->indirect_ctx.size;

 if (wa_ctx->indirect_ctx.size == 0)
  return 0;

 vma = i915_gem_object_ggtt_pin(wa_ctx->indirect_ctx.obj, ((void*)0),
           0, CACHELINE_BYTES, 0);
 if (IS_ERR(vma))
  return PTR_ERR(vma);






 wa_ctx->indirect_ctx.shadow_gma = i915_ggtt_offset(vma);

 wa_ctx->per_ctx.shadow_gma = *((unsigned int *)per_ctx_va + 1);
 memset(per_ctx_va, 0, CACHELINE_BYTES);

 update_wa_ctx_2_shadow_ctx(wa_ctx);
 return 0;
}
