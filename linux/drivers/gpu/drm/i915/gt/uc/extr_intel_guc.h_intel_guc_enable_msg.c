
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_guc {int irq_lock; int msg_enabled_mask; } ;


 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static inline void intel_guc_enable_msg(struct intel_guc *guc, u32 mask)
{
 spin_lock_irq(&guc->irq_lock);
 guc->msg_enabled_mask |= mask;
 spin_unlock_irq(&guc->irq_lock);
}
