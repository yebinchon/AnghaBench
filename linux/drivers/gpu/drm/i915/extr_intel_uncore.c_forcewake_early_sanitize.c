
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* force_wake_get ) (struct intel_uncore*,unsigned int) ;} ;
struct intel_uncore {int lock; int fifo_count; TYPE_1__ funcs; int i915; } ;


 int GEM_BUG_ON (int) ;
 int GTFIFOCTL ;
 int GT_FIFO_CTL_BLOCK_ALL_POLICY_STALL ;
 int GT_FIFO_CTL_RC6_POLICY_STALL ;
 scalar_t__ IS_CHERRYVIEW (int ) ;
 int __raw_uncore_read32 (struct intel_uncore*,int ) ;
 int __raw_uncore_write32 (struct intel_uncore*,int ,int) ;
 int fifo_free_entries (struct intel_uncore*) ;
 int intel_uncore_forcewake_reset (struct intel_uncore*) ;
 scalar_t__ intel_uncore_has_fifo (struct intel_uncore*) ;
 int intel_uncore_has_forcewake (struct intel_uncore*) ;
 int iosf_mbi_punit_acquire () ;
 int iosf_mbi_punit_release () ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (struct intel_uncore*,unsigned int) ;

__attribute__((used)) static void forcewake_early_sanitize(struct intel_uncore *uncore,
         unsigned int restore_forcewake)
{
 GEM_BUG_ON(!intel_uncore_has_forcewake(uncore));


 if (IS_CHERRYVIEW(uncore->i915)) {
  __raw_uncore_write32(uncore, GTFIFOCTL,
         __raw_uncore_read32(uncore, GTFIFOCTL) |
         GT_FIFO_CTL_BLOCK_ALL_POLICY_STALL |
         GT_FIFO_CTL_RC6_POLICY_STALL);
 }

 iosf_mbi_punit_acquire();
 intel_uncore_forcewake_reset(uncore);
 if (restore_forcewake) {
  spin_lock_irq(&uncore->lock);
  uncore->funcs.force_wake_get(uncore, restore_forcewake);

  if (intel_uncore_has_fifo(uncore))
   uncore->fifo_count = fifo_free_entries(uncore);
  spin_unlock_irq(&uncore->lock);
 }
 iosf_mbi_punit_release();
}
