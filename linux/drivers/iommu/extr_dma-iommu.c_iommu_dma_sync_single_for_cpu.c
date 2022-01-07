
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int phys_addr_t ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_addr_t ;


 int arch_sync_dma_for_cpu (struct device*,int ,size_t,int) ;
 scalar_t__ dev_is_dma_coherent (struct device*) ;
 int iommu_get_dma_domain (struct device*) ;
 int iommu_iova_to_phys (int ,int ) ;

__attribute__((used)) static void iommu_dma_sync_single_for_cpu(struct device *dev,
  dma_addr_t dma_handle, size_t size, enum dma_data_direction dir)
{
 phys_addr_t phys;

 if (dev_is_dma_coherent(dev))
  return;

 phys = iommu_iova_to_phys(iommu_get_dma_domain(dev), dma_handle);
 arch_sync_dma_for_cpu(dev, phys, size, dir);
}
