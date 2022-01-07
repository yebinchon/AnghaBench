
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* read_fw_domains ) (struct intel_uncore*,int ) ;int (* write_fw_domains ) (struct intel_uncore*,int ) ;} ;
struct intel_uncore {int fw_domains; TYPE_1__ funcs; } ;
typedef int i915_reg_t ;
typedef enum forcewake_domains { ____Placeholder_forcewake_domains } forcewake_domains ;


 unsigned int FW_REG_READ ;
 unsigned int FW_REG_WRITE ;
 int WARN_ON (int) ;
 int intel_uncore_has_forcewake (struct intel_uncore*) ;
 int stub1 (struct intel_uncore*,int ) ;
 int stub2 (struct intel_uncore*,int ) ;

enum forcewake_domains
intel_uncore_forcewake_for_reg(struct intel_uncore *uncore,
          i915_reg_t reg, unsigned int op)
{
 enum forcewake_domains fw_domains = 0;

 WARN_ON(!op);

 if (!intel_uncore_has_forcewake(uncore))
  return 0;

 if (op & FW_REG_READ)
  fw_domains = uncore->funcs.read_fw_domains(uncore, reg);

 if (op & FW_REG_WRITE)
  fw_domains |= uncore->funcs.write_fw_domains(uncore, reg);

 WARN_ON(fw_domains & ~uncore->fw_domains);

 return fw_domains;
}
