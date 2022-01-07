
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_wa_list {int dummy; } ;
struct intel_engine_cs {scalar_t__ class; struct i915_wa_list whitelist; } ;


 int GEN8_L3SQCREG4 ;
 scalar_t__ RENDER_CLASS ;
 int gen9_whitelist_build (struct i915_wa_list*) ;
 int whitelist_reg (struct i915_wa_list*,int ) ;

__attribute__((used)) static void kbl_whitelist_build(struct intel_engine_cs *engine)
{
 struct i915_wa_list *w = &engine->whitelist;

 if (engine->class != RENDER_CLASS)
  return;

 gen9_whitelist_build(w);


 whitelist_reg(w, GEN8_L3SQCREG4);
}
