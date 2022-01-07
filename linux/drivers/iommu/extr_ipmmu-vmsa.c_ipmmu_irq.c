
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmmu_vmsa_device {unsigned int num_ctx; int lock; int * domains; } ;
typedef scalar_t__ irqreturn_t ;


 scalar_t__ IRQ_HANDLED ;
 scalar_t__ IRQ_NONE ;
 scalar_t__ ipmmu_domain_irq (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t ipmmu_irq(int irq, void *dev)
{
 struct ipmmu_vmsa_device *mmu = dev;
 irqreturn_t status = IRQ_NONE;
 unsigned int i;
 unsigned long flags;

 spin_lock_irqsave(&mmu->lock, flags);




 for (i = 0; i < mmu->num_ctx; i++) {
  if (!mmu->domains[i])
   continue;
  if (ipmmu_domain_irq(mmu->domains[i]) == IRQ_HANDLED)
   status = IRQ_HANDLED;
 }

 spin_unlock_irqrestore(&mmu->lock, flags);

 return status;
}
