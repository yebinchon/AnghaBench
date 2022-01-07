
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_iommu_domain {int num_iommus; struct omap_iommu_device* iommus; } ;
struct omap_iommu_device {struct omap_iommu_device* pgtable; } ;


 int kfree (struct omap_iommu_device*) ;

__attribute__((used)) static void omap_iommu_detach_fini(struct omap_iommu_domain *odomain)
{
 int i;
 struct omap_iommu_device *iommu = odomain->iommus;

 for (i = 0; iommu && i < odomain->num_iommus; i++, iommu++)
  kfree(iommu->pgtable);

 kfree(odomain->iommus);
 odomain->num_iommus = 0;
 odomain->iommus = ((void*)0);
}
