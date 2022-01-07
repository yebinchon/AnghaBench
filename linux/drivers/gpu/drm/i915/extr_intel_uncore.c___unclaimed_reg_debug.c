
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_uncore {int dummy; } ;
typedef int i915_reg_t ;
struct TYPE_2__ {int mmio_debug; } ;


 scalar_t__ WARN (int,char*,char*,int ) ;
 scalar_t__ check_for_unclaimed_mmio (struct intel_uncore*) ;
 int i915_mmio_reg_offset (int const) ;
 TYPE_1__ i915_modparams ;

__attribute__((used)) static void
__unclaimed_reg_debug(struct intel_uncore *uncore,
        const i915_reg_t reg,
        const bool read,
        const bool before)
{
 if (WARN(check_for_unclaimed_mmio(uncore) && !before,
   "Unclaimed %s register 0x%x\n",
   read ? "read from" : "write to",
   i915_mmio_reg_offset(reg)))

  i915_modparams.mmio_debug--;
}
