
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct iommu_resv_region {int list; } ;
struct device {int dummy; } ;


 int IOMMU_MMIO ;
 int IOMMU_NOEXEC ;
 int IOMMU_RESV_SW_MSI ;
 int IOMMU_WRITE ;
 int MSI_IOVA_BASE ;
 int MSI_IOVA_LENGTH ;
 struct iommu_resv_region* iommu_alloc_resv_region (int ,int ,int,int ) ;
 int iommu_dma_get_resv_regions (struct device*,struct list_head*) ;
 int list_add_tail (int *,struct list_head*) ;

__attribute__((used)) static void arm_smmu_get_resv_regions(struct device *dev,
          struct list_head *head)
{
 struct iommu_resv_region *region;
 int prot = IOMMU_WRITE | IOMMU_NOEXEC | IOMMU_MMIO;

 region = iommu_alloc_resv_region(MSI_IOVA_BASE, MSI_IOVA_LENGTH,
      prot, IOMMU_RESV_SW_MSI);
 if (!region)
  return;

 list_add_tail(&region->list, head);

 iommu_dma_get_resv_regions(dev, head);
}
