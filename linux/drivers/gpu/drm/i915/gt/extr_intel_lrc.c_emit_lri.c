
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lri {int value; int reg; } ;


 int GEM_BUG_ON (int) ;
 int MI_LOAD_REGISTER_IMM (unsigned int) ;
 int MI_NOOP ;
 int i915_mmio_reg_offset (int ) ;

__attribute__((used)) static u32 *emit_lri(u32 *batch, const struct lri *lri, unsigned int count)
{
 GEM_BUG_ON(!count || count > 63);

 *batch++ = MI_LOAD_REGISTER_IMM(count);
 do {
  *batch++ = i915_mmio_reg_offset(lri->reg);
  *batch++ = lri->value;
 } while (lri++, --count);
 *batch++ = MI_NOOP;

 return batch;
}
