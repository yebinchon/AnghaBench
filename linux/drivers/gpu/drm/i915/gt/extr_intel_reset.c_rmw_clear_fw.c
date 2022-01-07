
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_uncore {int dummy; } ;
typedef int i915_reg_t ;


 int intel_uncore_rmw_fw (struct intel_uncore*,int ,int ,int ) ;

__attribute__((used)) static void rmw_clear_fw(struct intel_uncore *uncore, i915_reg_t reg, u32 clr)
{
 intel_uncore_rmw_fw(uncore, reg, clr, 0);
}
