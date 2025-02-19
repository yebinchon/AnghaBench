
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
struct intel_sseu {int dummy; } ;
struct intel_context {int state; } ;
struct i915_request {int i915; } ;


 int CTX_R_PWR_CLK_STATE ;
 scalar_t__ IS_ERR (int *) ;
 int LRC_STATE_PN ;
 int MI_STORE_DWORD_IMM_GEN4 ;
 int MI_USE_GGTT ;
 int PAGE_SIZE ;
 int PTR_ERR (int *) ;
 scalar_t__ i915_ggtt_offset (int ) ;
 int intel_ring_advance (struct i915_request*,int *) ;
 int * intel_ring_begin (struct i915_request*,int) ;
 int intel_sseu_make_rpcs (int ,struct intel_sseu*) ;
 int lower_32_bits (scalar_t__) ;
 int upper_32_bits (scalar_t__) ;

__attribute__((used)) static int gen8_emit_rpcs_config(struct i915_request *rq,
     struct intel_context *ce,
     struct intel_sseu sseu)
{
 u64 offset;
 u32 *cs;

 cs = intel_ring_begin(rq, 4);
 if (IS_ERR(cs))
  return PTR_ERR(cs);

 offset = i915_ggtt_offset(ce->state) +
   LRC_STATE_PN * PAGE_SIZE +
   (CTX_R_PWR_CLK_STATE + 1) * 4;

 *cs++ = MI_STORE_DWORD_IMM_GEN4 | MI_USE_GGTT;
 *cs++ = lower_32_bits(offset);
 *cs++ = upper_32_bits(offset);
 *cs++ = intel_sseu_make_rpcs(rq->i915, &sseu);

 intel_ring_advance(rq, cs);

 return 0;
}
