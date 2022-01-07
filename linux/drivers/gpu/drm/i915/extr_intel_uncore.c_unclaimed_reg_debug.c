
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_uncore {TYPE_1__* debug; int lock; } ;
typedef int i915_reg_t ;
struct TYPE_4__ {int mmio_debug; } ;
struct TYPE_3__ {int lock; } ;


 int __unclaimed_reg_debug (struct intel_uncore*,int const,int const,int const) ;
 TYPE_2__ i915_modparams ;
 scalar_t__ likely (int) ;
 int lockdep_assert_held (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void
unclaimed_reg_debug(struct intel_uncore *uncore,
      const i915_reg_t reg,
      const bool read,
      const bool before)
{
 if (likely(!i915_modparams.mmio_debug))
  return;


 lockdep_assert_held(&uncore->lock);

 if (before)
  spin_lock(&uncore->debug->lock);

 __unclaimed_reg_debug(uncore, reg, read, before);

 if (!before)
  spin_unlock(&uncore->debug->lock);
}
