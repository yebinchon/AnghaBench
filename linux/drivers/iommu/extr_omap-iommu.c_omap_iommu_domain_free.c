
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_iommu_domain {scalar_t__ dev; } ;
struct iommu_domain {int dummy; } ;


 int _omap_iommu_detach_dev (struct omap_iommu_domain*,scalar_t__) ;
 int kfree (struct omap_iommu_domain*) ;
 struct omap_iommu_domain* to_omap_domain (struct iommu_domain*) ;

__attribute__((used)) static void omap_iommu_domain_free(struct iommu_domain *domain)
{
 struct omap_iommu_domain *omap_domain = to_omap_domain(domain);





 if (omap_domain->dev)
  _omap_iommu_detach_dev(omap_domain, omap_domain->dev);

 kfree(omap_domain);
}
