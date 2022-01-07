
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; } ;
struct dma_ops_domain {TYPE_1__ domain; } ;


 int domain_flush_complete (TYPE_1__*) ;
 int domain_flush_tlb (TYPE_1__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void dma_ops_domain_flush_tlb(struct dma_ops_domain *dom)
{
 unsigned long flags;

 spin_lock_irqsave(&dom->domain.lock, flags);
 domain_flush_tlb(&dom->domain);
 domain_flush_complete(&dom->domain);
 spin_unlock_irqrestore(&dom->domain.lock, flags);
}
