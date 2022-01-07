
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct intel_guc {int mmio_msg; int msg_enabled_mask; int irq_lock; } ;
struct TYPE_2__ {int uncore; } ;


 int SOFT_SCRATCH (int) ;
 int guc_clear_mmio_msg (struct intel_guc*) ;
 TYPE_1__* guc_to_gt (struct intel_guc*) ;
 int intel_uncore_read (int ,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void guc_get_mmio_msg(struct intel_guc *guc)
{
 u32 val;

 spin_lock_irq(&guc->irq_lock);

 val = intel_uncore_read(guc_to_gt(guc)->uncore, SOFT_SCRATCH(15));
 guc->mmio_msg |= val & guc->msg_enabled_mask;






 guc_clear_mmio_msg(guc);

 spin_unlock_irq(&guc->irq_lock);
}
