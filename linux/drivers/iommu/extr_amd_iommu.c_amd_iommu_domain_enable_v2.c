
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct protection_domain {scalar_t__ dev_cnt; int flags; int glx; int lock; int * gcr3_tbl; } ;
struct iommu_domain {int dummy; } ;


 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int PASID_MASK ;
 int PD_IOMMUV2_MASK ;
 int amd_iommu_max_glx_val ;
 scalar_t__ get_zeroed_page (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct protection_domain* to_pdomain (struct iommu_domain*) ;
 int update_domain (struct protection_domain*) ;

int amd_iommu_domain_enable_v2(struct iommu_domain *dom, int pasids)
{
 struct protection_domain *domain = to_pdomain(dom);
 unsigned long flags;
 int levels, ret;

 if (pasids <= 0 || pasids > (PASID_MASK + 1))
  return -EINVAL;


 for (levels = 0; (pasids - 1) & ~0x1ff; pasids >>= 9)
  levels += 1;

 if (levels > amd_iommu_max_glx_val)
  return -EINVAL;

 spin_lock_irqsave(&domain->lock, flags);






 ret = -EBUSY;
 if (domain->dev_cnt > 0 || domain->flags & PD_IOMMUV2_MASK)
  goto out;

 ret = -ENOMEM;
 domain->gcr3_tbl = (void *)get_zeroed_page(GFP_ATOMIC);
 if (domain->gcr3_tbl == ((void*)0))
  goto out;

 domain->glx = levels;
 domain->flags |= PD_IOMMUV2_MASK;

 update_domain(domain);

 ret = 0;

out:
 spin_unlock_irqrestore(&domain->lock, flags);

 return ret;
}
