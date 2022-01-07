
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i915_wa_list {int dummy; } ;
struct i915_wa {int read; int val; int mask; int reg; } ;
typedef int i915_reg_t ;


 int _wa_add (struct i915_wa_list*,struct i915_wa*) ;

__attribute__((used)) static void
wa_write_masked_or(struct i915_wa_list *wal, i915_reg_t reg, u32 mask,
     u32 val)
{
 struct i915_wa wa = {
  .reg = reg,
  .mask = mask,
  .val = val,
  .read = mask,
 };

 _wa_add(wal, &wa);
}
