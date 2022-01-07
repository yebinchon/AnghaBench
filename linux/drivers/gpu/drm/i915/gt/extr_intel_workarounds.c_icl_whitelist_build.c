
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_wa_list {int dummy; } ;
struct intel_engine_cs {int class; int mmio_base; struct i915_wa_list whitelist; } ;


 int GEN10_SAMPLER_MODE ;
 int GEN9_HALF_SLICE_CHICKEN7 ;
 int GEN9_SLICE_COMMON_ECO_CHICKEN1 ;
 int PS_INVOCATION_COUNT ;

 int RING_FORCE_TO_NONPRIV_ACCESS_RD ;
 int RING_FORCE_TO_NONPRIV_RANGE_4 ;

 int _MMIO (int ) ;
 int whitelist_reg (struct i915_wa_list*,int ) ;
 int whitelist_reg_ext (struct i915_wa_list*,int ,int) ;

__attribute__((used)) static void icl_whitelist_build(struct intel_engine_cs *engine)
{
 struct i915_wa_list *w = &engine->whitelist;

 switch (engine->class) {
 case 129:

  whitelist_reg(w, GEN9_HALF_SLICE_CHICKEN7);


  whitelist_reg(w, GEN10_SAMPLER_MODE);


  whitelist_reg(w, GEN9_SLICE_COMMON_ECO_CHICKEN1);
  whitelist_reg_ext(w, PS_INVOCATION_COUNT,
      RING_FORCE_TO_NONPRIV_ACCESS_RD |
      RING_FORCE_TO_NONPRIV_RANGE_4);
  break;

 case 128:

  whitelist_reg_ext(w, _MMIO(0x2000 + engine->mmio_base),
      RING_FORCE_TO_NONPRIV_ACCESS_RD);

  whitelist_reg_ext(w, _MMIO(0x2014 + engine->mmio_base),
      RING_FORCE_TO_NONPRIV_ACCESS_RD);

  whitelist_reg_ext(w, _MMIO(0x23B0 + engine->mmio_base),
      RING_FORCE_TO_NONPRIV_ACCESS_RD);
  break;

 default:
  break;
 }
}
