
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_iommu_domain {int num_iommus; struct omap_iommu_device* iommus; int dev; } ;
struct omap_iommu_device {struct omap_iommu* iommu_dev; } ;
struct omap_iommu {int dev; } ;
struct iommu_domain {int dummy; } ;


 int pm_runtime_put_sync (int ) ;
 struct omap_iommu_domain* to_omap_domain (struct iommu_domain*) ;

int omap_iommu_domain_deactivate(struct iommu_domain *domain)
{
 struct omap_iommu_domain *omap_domain = to_omap_domain(domain);
 struct omap_iommu_device *iommu;
 struct omap_iommu *oiommu;
 int i;

 if (!omap_domain->dev)
  return 0;

 iommu = omap_domain->iommus;
 iommu += (omap_domain->num_iommus - 1);
 for (i = 0; i < omap_domain->num_iommus; i++, iommu--) {
  oiommu = iommu->iommu_dev;
  pm_runtime_put_sync(oiommu->dev);
 }

 return 0;
}
