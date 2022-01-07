
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_context {int dummy; } ;
struct i915_request {int dummy; } ;
struct flex {int value; int reg; } ;


 int GEM_BUG_ON (int) ;
 scalar_t__ IS_ERR (int *) ;
 int MI_LOAD_REGISTER_IMM (unsigned int) ;
 int MI_NOOP ;
 int PTR_ERR (int *) ;
 int i915_mmio_reg_offset (int ) ;
 int intel_ring_advance (struct i915_request*,int *) ;
 int * intel_ring_begin (struct i915_request*,int) ;

__attribute__((used)) static int
gen8_load_flex(struct i915_request *rq,
        struct intel_context *ce,
        const struct flex *flex, unsigned int count)
{
 u32 *cs;

 GEM_BUG_ON(!count || count > 63);

 cs = intel_ring_begin(rq, 2 * count + 2);
 if (IS_ERR(cs))
  return PTR_ERR(cs);

 *cs++ = MI_LOAD_REGISTER_IMM(count);
 do {
  *cs++ = i915_mmio_reg_offset(flex->reg);
  *cs++ = flex->value;
 } while (flex++, --count);
 *cs++ = MI_NOOP;

 intel_ring_advance(rq, cs);

 return 0;
}
