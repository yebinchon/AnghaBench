
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct protection_domain {int lock; } ;
struct iommu_domain {int dummy; } ;


 int __amd_iommu_flush_tlb (struct protection_domain*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct protection_domain* to_pdomain (struct iommu_domain*) ;

int amd_iommu_flush_tlb(struct iommu_domain *dom, int pasid)
{
 struct protection_domain *domain = to_pdomain(dom);
 unsigned long flags;
 int ret;

 spin_lock_irqsave(&domain->lock, flags);
 ret = __amd_iommu_flush_tlb(domain, pasid);
 spin_unlock_irqrestore(&domain->lock, flags);

 return ret;
}
