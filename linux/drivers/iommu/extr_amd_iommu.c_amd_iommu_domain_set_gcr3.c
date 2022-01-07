
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct protection_domain {int lock; } ;
struct iommu_domain {int dummy; } ;


 int __set_gcr3 (struct protection_domain*,int,unsigned long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct protection_domain* to_pdomain (struct iommu_domain*) ;

int amd_iommu_domain_set_gcr3(struct iommu_domain *dom, int pasid,
         unsigned long cr3)
{
 struct protection_domain *domain = to_pdomain(dom);
 unsigned long flags;
 int ret;

 spin_lock_irqsave(&domain->lock, flags);
 ret = __set_gcr3(domain, pasid, cr3);
 spin_unlock_irqrestore(&domain->lock, flags);

 return ret;
}
