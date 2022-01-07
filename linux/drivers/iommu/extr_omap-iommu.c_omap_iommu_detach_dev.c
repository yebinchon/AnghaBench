
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_iommu_domain {int lock; } ;
struct iommu_domain {int dummy; } ;
struct device {int dummy; } ;


 int _omap_iommu_detach_dev (struct omap_iommu_domain*,struct device*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct omap_iommu_domain* to_omap_domain (struct iommu_domain*) ;

__attribute__((used)) static void omap_iommu_detach_dev(struct iommu_domain *domain,
      struct device *dev)
{
 struct omap_iommu_domain *omap_domain = to_omap_domain(domain);

 spin_lock(&omap_domain->lock);
 _omap_iommu_detach_dev(omap_domain, dev);
 spin_unlock(&omap_domain->lock);
}
