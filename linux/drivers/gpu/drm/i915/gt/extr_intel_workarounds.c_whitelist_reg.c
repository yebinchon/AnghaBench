
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_wa_list {int dummy; } ;
typedef int i915_reg_t ;


 int RING_FORCE_TO_NONPRIV_ACCESS_RW ;
 int whitelist_reg_ext (struct i915_wa_list*,int ,int ) ;

__attribute__((used)) static void
whitelist_reg(struct i915_wa_list *wal, i915_reg_t reg)
{
 whitelist_reg_ext(wal, reg, RING_FORCE_TO_NONPRIV_ACCESS_RW);
}
