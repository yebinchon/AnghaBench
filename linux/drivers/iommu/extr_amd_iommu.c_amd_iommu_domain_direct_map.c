
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct protection_domain {int lock; int mode; } ;
struct iommu_domain {int dummy; } ;


 int PAGE_MODE_NONE ;
 int free_pagetable (struct protection_domain*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct protection_domain* to_pdomain (struct iommu_domain*) ;
 int update_domain (struct protection_domain*) ;

void amd_iommu_domain_direct_map(struct iommu_domain *dom)
{
 struct protection_domain *domain = to_pdomain(dom);
 unsigned long flags;

 spin_lock_irqsave(&domain->lock, flags);


 domain->mode = PAGE_MODE_NONE;


 update_domain(domain);


 free_pagetable(domain);

 spin_unlock_irqrestore(&domain->lock, flags);
}
