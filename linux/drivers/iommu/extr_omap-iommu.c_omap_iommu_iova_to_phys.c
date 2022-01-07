
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct omap_iommu_domain {struct omap_iommu_device* iommus; } ;
struct omap_iommu_device {struct omap_iommu* iommu_dev; } ;
struct omap_iommu {struct device* dev; } ;
struct iommu_domain {int dummy; } ;
struct device {int dummy; } ;
typedef int phys_addr_t ;
typedef scalar_t__ dma_addr_t ;


 int IOLARGE_MASK ;
 int IOPTE_MASK ;
 int IOSECTION_MASK ;
 int IOSUPER_MASK ;
 int dev_err (struct device*,char*,int ,unsigned long long) ;
 scalar_t__ iopgd_is_section (int ) ;
 scalar_t__ iopgd_is_super (int ) ;
 int iopgtable_lookup_entry (struct omap_iommu*,scalar_t__,int **,int **) ;
 scalar_t__ iopte_is_large (int ) ;
 scalar_t__ iopte_is_small (int ) ;
 int omap_iommu_translate (int ,scalar_t__,int ) ;
 struct omap_iommu_domain* to_omap_domain (struct iommu_domain*) ;

__attribute__((used)) static phys_addr_t omap_iommu_iova_to_phys(struct iommu_domain *domain,
        dma_addr_t da)
{
 struct omap_iommu_domain *omap_domain = to_omap_domain(domain);
 struct omap_iommu_device *iommu = omap_domain->iommus;
 struct omap_iommu *oiommu = iommu->iommu_dev;
 struct device *dev = oiommu->dev;
 u32 *pgd, *pte;
 phys_addr_t ret = 0;





 iopgtable_lookup_entry(oiommu, da, &pgd, &pte);

 if (pte) {
  if (iopte_is_small(*pte))
   ret = omap_iommu_translate(*pte, da, IOPTE_MASK);
  else if (iopte_is_large(*pte))
   ret = omap_iommu_translate(*pte, da, IOLARGE_MASK);
  else
   dev_err(dev, "bogus pte 0x%x, da 0x%llx", *pte,
    (unsigned long long)da);
 } else {
  if (iopgd_is_section(*pgd))
   ret = omap_iommu_translate(*pgd, da, IOSECTION_MASK);
  else if (iopgd_is_super(*pgd))
   ret = omap_iommu_translate(*pgd, da, IOSUPER_MASK);
  else
   dev_err(dev, "bogus pgd 0x%x, da 0x%llx", *pgd,
    (unsigned long long)da);
 }

 return ret;
}
