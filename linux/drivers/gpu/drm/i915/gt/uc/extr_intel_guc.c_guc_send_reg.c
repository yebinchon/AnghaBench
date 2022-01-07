
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int count; scalar_t__ base; } ;
struct intel_guc {TYPE_1__ send_regs; } ;
typedef int i915_reg_t ;


 int GEM_BUG_ON (int) ;
 int _MMIO (scalar_t__) ;

__attribute__((used)) static inline i915_reg_t guc_send_reg(struct intel_guc *guc, u32 i)
{
 GEM_BUG_ON(!guc->send_regs.base);
 GEM_BUG_ON(!guc->send_regs.count);
 GEM_BUG_ON(i >= guc->send_regs.count);

 return _MMIO(guc->send_regs.base + 4 * i);
}
