
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_uncore {int dummy; } ;
typedef int i915_reg_t ;
typedef enum forcewake_domains { ____Placeholder_forcewake_domains } forcewake_domains ;


 int FORCEWAKE_RENDER ;

__attribute__((used)) static enum forcewake_domains
gen6_reg_write_fw_domains(struct intel_uncore *uncore, i915_reg_t reg)
{
 return FORCEWAKE_RENDER;
}
