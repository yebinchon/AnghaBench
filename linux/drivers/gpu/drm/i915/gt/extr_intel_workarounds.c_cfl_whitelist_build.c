
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_wa_list {int dummy; } ;
struct intel_engine_cs {scalar_t__ class; struct i915_wa_list whitelist; } ;


 int PS_INVOCATION_COUNT ;
 scalar_t__ RENDER_CLASS ;
 int RING_FORCE_TO_NONPRIV_ACCESS_RD ;
 int RING_FORCE_TO_NONPRIV_RANGE_4 ;
 int gen9_whitelist_build (struct i915_wa_list*) ;
 int whitelist_reg_ext (struct i915_wa_list*,int ,int) ;

__attribute__((used)) static void cfl_whitelist_build(struct intel_engine_cs *engine)
{
 struct i915_wa_list *w = &engine->whitelist;

 if (engine->class != RENDER_CLASS)
  return;

 gen9_whitelist_build(w);
 whitelist_reg_ext(w, PS_INVOCATION_COUNT,
     RING_FORCE_TO_NONPRIV_ACCESS_RD |
     RING_FORCE_TO_NONPRIV_RANGE_4);
}
