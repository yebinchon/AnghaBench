
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i915_wa_list {int dummy; } ;
typedef int i915_reg_t ;


 int wa_write_masked_or (struct i915_wa_list*,int ,int ,int ) ;

__attribute__((used)) static void
wa_write_or(struct i915_wa_list *wal, i915_reg_t reg, u32 val)
{
 wa_write_masked_or(wal, reg, val, val);
}
