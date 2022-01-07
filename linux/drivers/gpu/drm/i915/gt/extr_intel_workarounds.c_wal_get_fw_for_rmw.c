
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_uncore {int dummy; } ;
struct i915_wa_list {unsigned int count; struct i915_wa* list; } ;
struct i915_wa {int reg; } ;
typedef enum forcewake_domains { ____Placeholder_forcewake_domains } forcewake_domains ;


 int FW_REG_READ ;
 int FW_REG_WRITE ;
 int intel_uncore_forcewake_for_reg (struct intel_uncore*,int ,int) ;

__attribute__((used)) static enum forcewake_domains
wal_get_fw_for_rmw(struct intel_uncore *uncore, const struct i915_wa_list *wal)
{
 enum forcewake_domains fw = 0;
 struct i915_wa *wa;
 unsigned int i;

 for (i = 0, wa = wal->list; i < wal->count; i++, wa++)
  fw |= intel_uncore_forcewake_for_reg(uncore,
           wa->reg,
           FW_REG_READ |
           FW_REG_WRITE);

 return fw;
}
