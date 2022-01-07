
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_wa_list {int dummy; } ;


 int COMMON_SLICE_CHICKEN2 ;
 int GEN8_CS_CHICKEN1 ;
 int GEN8_HDC_CHICKEN1 ;
 int GEN9_CTX_PREEMPT_REG ;
 int whitelist_reg (struct i915_wa_list*,int ) ;

__attribute__((used)) static void gen9_whitelist_build(struct i915_wa_list *w)
{

 whitelist_reg(w, GEN9_CTX_PREEMPT_REG);


 whitelist_reg(w, GEN8_CS_CHICKEN1);


 whitelist_reg(w, GEN8_HDC_CHICKEN1);


 whitelist_reg(w, COMMON_SLICE_CHICKEN2);
}
