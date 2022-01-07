
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_uncore {int dummy; } ;
typedef int i915_reg_t ;


 int intel_uncore_rmw (struct intel_uncore*,int ,int ,int ) ;

__attribute__((used)) static void clear_register(struct intel_uncore *uncore, i915_reg_t reg)
{
 intel_uncore_rmw(uncore, reg, 0, 0);
}
