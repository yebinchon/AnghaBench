
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_iommu_domain {int num_iommus; struct omap_iommu_device* iommus; } ;
struct omap_iommu_device {scalar_t__ pgtable; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int IOPGD_TABLE_SIZE ;
 int IS_ALIGNED (long,int ) ;
 scalar_t__ WARN_ON (int) ;
 struct omap_iommu_device* kcalloc (int,int,int ) ;
 scalar_t__ kzalloc (int ,int ) ;
 int omap_iommu_count (struct device*) ;

__attribute__((used)) static int omap_iommu_attach_init(struct device *dev,
      struct omap_iommu_domain *odomain)
{
 struct omap_iommu_device *iommu;
 int i;

 odomain->num_iommus = omap_iommu_count(dev);
 if (!odomain->num_iommus)
  return -EINVAL;

 odomain->iommus = kcalloc(odomain->num_iommus, sizeof(*iommu),
      GFP_ATOMIC);
 if (!odomain->iommus)
  return -ENOMEM;

 iommu = odomain->iommus;
 for (i = 0; i < odomain->num_iommus; i++, iommu++) {
  iommu->pgtable = kzalloc(IOPGD_TABLE_SIZE, GFP_ATOMIC);
  if (!iommu->pgtable)
   return -ENOMEM;





  if (WARN_ON(!IS_ALIGNED((long)iommu->pgtable,
     IOPGD_TABLE_SIZE)))
   return -EINVAL;
 }

 return 0;
}
