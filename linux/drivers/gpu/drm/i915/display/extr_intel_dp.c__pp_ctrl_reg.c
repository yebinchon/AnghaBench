
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pps_registers {int pp_ctrl; } ;
struct intel_dp {int dummy; } ;
typedef int i915_reg_t ;


 int intel_pps_get_registers (struct intel_dp*,struct pps_registers*) ;

__attribute__((used)) static i915_reg_t
_pp_ctrl_reg(struct intel_dp *intel_dp)
{
 struct pps_registers regs;

 intel_pps_get_registers(intel_dp, &regs);

 return regs.pp_ctrl;
}
