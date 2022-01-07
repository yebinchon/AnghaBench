
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i915_wa_list {int dummy; } ;
typedef int i915_reg_t ;


 int _MASKED_BIT_ENABLE (int ) ;
 int wa_write_masked_or (struct i915_wa_list*,int ,int ,int ) ;

__attribute__((used)) static void
wa_masked_en(struct i915_wa_list *wal, i915_reg_t reg, u32 val)
{
 wa_write_masked_or(wal, reg, val, _MASKED_BIT_ENABLE(val));
}
