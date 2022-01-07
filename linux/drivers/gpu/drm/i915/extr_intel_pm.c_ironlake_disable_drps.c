
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct intel_uncore {int dummy; } ;
struct TYPE_2__ {int fstart; } ;
struct drm_i915_private {TYPE_1__ ips; struct intel_uncore uncore; } ;


 int DEIER ;
 int DEIIR ;
 int DEIMR ;
 int DE_PCU_EVENT ;
 int MEMCTL_CMD_STS ;
 int MEMINTREN ;
 int MEMINTRSTS ;
 int MEMINT_EVAL_CHG ;
 int MEMINT_EVAL_CHG_EN ;
 int MEMSWCTL ;
 int intel_uncore_read (struct intel_uncore*,int ) ;
 int intel_uncore_read16 (struct intel_uncore*,int ) ;
 int intel_uncore_write (struct intel_uncore*,int ,int) ;
 int ironlake_set_drps (struct drm_i915_private*,int ) ;
 int mchdev_lock ;
 int mdelay (int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void ironlake_disable_drps(struct drm_i915_private *i915)
{
 struct intel_uncore *uncore = &i915->uncore;
 u16 rgvswctl;

 spin_lock_irq(&mchdev_lock);

 rgvswctl = intel_uncore_read16(uncore, MEMSWCTL);


 intel_uncore_write(uncore,
      MEMINTREN,
      intel_uncore_read(uncore, MEMINTREN) &
      ~MEMINT_EVAL_CHG_EN);
 intel_uncore_write(uncore, MEMINTRSTS, MEMINT_EVAL_CHG);
 intel_uncore_write(uncore,
      DEIER,
      intel_uncore_read(uncore, DEIER) & ~DE_PCU_EVENT);
 intel_uncore_write(uncore, DEIIR, DE_PCU_EVENT);
 intel_uncore_write(uncore,
      DEIMR,
      intel_uncore_read(uncore, DEIMR) | DE_PCU_EVENT);


 ironlake_set_drps(i915, i915->ips.fstart);
 mdelay(1);
 rgvswctl |= MEMCTL_CMD_STS;
 intel_uncore_write(uncore, MEMSWCTL, rgvswctl);
 mdelay(1);

 spin_unlock_irq(&mchdev_lock);
}
