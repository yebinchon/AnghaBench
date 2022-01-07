
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_context {int state; } ;
struct i915_request {int dummy; } ;
struct flex {int offset; int value; } ;


 scalar_t__ IS_ERR (int*) ;
 int LRC_STATE_PN ;
 int MI_STORE_DWORD_IMM_GEN4 ;
 int MI_USE_GGTT ;
 int PAGE_SIZE ;
 int PTR_ERR (int*) ;
 int i915_ggtt_offset (int ) ;
 int intel_ring_advance (struct i915_request*,int*) ;
 int* intel_ring_begin (struct i915_request*,int) ;

__attribute__((used)) static int
gen8_store_flex(struct i915_request *rq,
  struct intel_context *ce,
  const struct flex *flex, unsigned int count)
{
 u32 offset;
 u32 *cs;

 cs = intel_ring_begin(rq, 4 * count);
 if (IS_ERR(cs))
  return PTR_ERR(cs);

 offset = i915_ggtt_offset(ce->state) + LRC_STATE_PN * PAGE_SIZE;
 do {
  *cs++ = MI_STORE_DWORD_IMM_GEN4 | MI_USE_GGTT;
  *cs++ = offset + (flex->offset + 1) * sizeof(u32);
  *cs++ = 0;
  *cs++ = flex->value;
 } while (flex++, --count);

 intel_ring_advance(rq, cs);

 return 0;
}
