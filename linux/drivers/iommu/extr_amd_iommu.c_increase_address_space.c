
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct protection_domain {scalar_t__ mode; int lock; int * pt_root; } ;
typedef int gfp_t ;


 scalar_t__ PAGE_MODE_6_LEVEL ;
 int PM_LEVEL_PDE (scalar_t__,int ) ;
 unsigned long PM_LEVEL_SIZE (scalar_t__) ;
 scalar_t__ WARN_ON_ONCE (int) ;
 scalar_t__ get_zeroed_page (int ) ;
 int iommu_virt_to_phys (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static bool increase_address_space(struct protection_domain *domain,
       unsigned long address,
       gfp_t gfp)
{
 unsigned long flags;
 bool ret = 0;
 u64 *pte;

 spin_lock_irqsave(&domain->lock, flags);

 if (address <= PM_LEVEL_SIZE(domain->mode) ||
     WARN_ON_ONCE(domain->mode == PAGE_MODE_6_LEVEL))
  goto out;

 pte = (void *)get_zeroed_page(gfp);
 if (!pte)
  goto out;

 *pte = PM_LEVEL_PDE(domain->mode,
     iommu_virt_to_phys(domain->pt_root));
 domain->pt_root = pte;
 domain->mode += 1;

 ret = 1;

out:
 spin_unlock_irqrestore(&domain->lock, flags);

 return ret;
}
