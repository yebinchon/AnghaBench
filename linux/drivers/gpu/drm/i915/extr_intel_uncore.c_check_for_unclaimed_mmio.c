
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_uncore {TYPE_1__* debug; } ;
struct TYPE_2__ {scalar_t__ suspend_count; int lock; } ;


 int fpga_check_for_unclaimed_mmio (struct intel_uncore*) ;
 int gen6_check_for_fifo_debug (struct intel_uncore*) ;
 scalar_t__ intel_uncore_has_dbg_unclaimed (struct intel_uncore*) ;
 scalar_t__ intel_uncore_has_fifo (struct intel_uncore*) ;
 scalar_t__ intel_uncore_has_fpga_dbg_unclaimed (struct intel_uncore*) ;
 int lockdep_assert_held (int *) ;
 int vlv_check_for_unclaimed_mmio (struct intel_uncore*) ;

__attribute__((used)) static bool
check_for_unclaimed_mmio(struct intel_uncore *uncore)
{
 bool ret = 0;

 lockdep_assert_held(&uncore->debug->lock);

 if (uncore->debug->suspend_count)
  return 0;

 if (intel_uncore_has_fpga_dbg_unclaimed(uncore))
  ret |= fpga_check_for_unclaimed_mmio(uncore);

 if (intel_uncore_has_dbg_unclaimed(uncore))
  ret |= vlv_check_for_unclaimed_mmio(uncore);

 if (intel_uncore_has_fifo(uncore))
  ret |= gen6_check_for_fifo_debug(uncore);

 return ret;
}
