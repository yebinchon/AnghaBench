
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct intel_engine_cs {scalar_t__ class; scalar_t__ instance; int i915; } ;
struct intel_context {int state; int vm; struct i915_gem_context* gem_context; } ;
struct i915_gem_context {scalar_t__ hw_id; } ;


 scalar_t__ BIT (int ) ;
 int BUILD_BUG_ON (int) ;
 int GEM_BUG_ON (int) ;
 int GEN11_ENGINE_CLASS_SHIFT ;
 int GEN11_ENGINE_INSTANCE_SHIFT ;
 scalar_t__ GEN11_MAX_CONTEXT_HW_ID ;
 int GEN11_SW_CTX_ID_SHIFT ;
 int GEN11_SW_CTX_ID_WIDTH ;
 int GEN8_CTX_ADDRESSING_MODE_SHIFT ;
 int GEN8_CTX_ID_SHIFT ;
 int GEN8_CTX_ID_WIDTH ;
 int GEN8_CTX_L3LLC_COHERENT ;
 int GEN8_CTX_PRIVILEGE ;
 int GEN8_CTX_VALID ;
 int INTEL_GEN (int ) ;
 int INTEL_LEGACY_32B_CONTEXT ;
 int INTEL_LEGACY_64B_CONTEXT ;
 scalar_t__ IS_GEN (int ,int) ;
 int LRC_HEADER_PAGES ;
 scalar_t__ MAX_CONTEXT_HW_ID ;
 int PAGE_SIZE ;
 int i915_ggtt_offset (int ) ;
 scalar_t__ i915_vm_is_4lvl (int ) ;

__attribute__((used)) static u64
lrc_descriptor(struct intel_context *ce, struct intel_engine_cs *engine)
{
 struct i915_gem_context *ctx = ce->gem_context;
 u64 desc;

 BUILD_BUG_ON(MAX_CONTEXT_HW_ID > (BIT(GEN8_CTX_ID_WIDTH)));
 BUILD_BUG_ON(GEN11_MAX_CONTEXT_HW_ID > (BIT(GEN11_SW_CTX_ID_WIDTH)));

 desc = INTEL_LEGACY_32B_CONTEXT;
 if (i915_vm_is_4lvl(ce->vm))
  desc = INTEL_LEGACY_64B_CONTEXT;
 desc <<= GEN8_CTX_ADDRESSING_MODE_SHIFT;

 desc |= GEN8_CTX_VALID | GEN8_CTX_PRIVILEGE;
 if (IS_GEN(engine->i915, 8))
  desc |= GEN8_CTX_L3LLC_COHERENT;

 desc |= i915_ggtt_offset(ce->state) + LRC_HEADER_PAGES * PAGE_SIZE;






 if (INTEL_GEN(engine->i915) >= 11) {
  GEM_BUG_ON(ctx->hw_id >= BIT(GEN11_SW_CTX_ID_WIDTH));
  desc |= (u64)ctx->hw_id << GEN11_SW_CTX_ID_SHIFT;


  desc |= (u64)engine->instance << GEN11_ENGINE_INSTANCE_SHIFT;




  desc |= (u64)engine->class << GEN11_ENGINE_CLASS_SHIFT;

 } else {
  GEM_BUG_ON(ctx->hw_id >= BIT(GEN8_CTX_ID_WIDTH));
  desc |= (u64)ctx->hw_id << GEN8_CTX_ID_SHIFT;
 }

 return desc;
}
