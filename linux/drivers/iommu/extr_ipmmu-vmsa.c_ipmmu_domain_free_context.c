
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmmu_vmsa_device {int lock; int ** domains; int ctx; } ;


 int clear_bit (unsigned int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ipmmu_domain_free_context(struct ipmmu_vmsa_device *mmu,
          unsigned int context_id)
{
 unsigned long flags;

 spin_lock_irqsave(&mmu->lock, flags);

 clear_bit(context_id, mmu->ctx);
 mmu->domains[context_id] = ((void*)0);

 spin_unlock_irqrestore(&mmu->lock, flags);
}
