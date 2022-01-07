
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_addr_t ;


 unsigned long DMA_ATTR_SKIP_CPU_SYNC ;
 int __iommu_dma_unmap (struct device*,int ,size_t) ;
 int iommu_dma_sync_single_for_cpu (struct device*,int ,size_t,int) ;

__attribute__((used)) static void iommu_dma_unmap_page(struct device *dev, dma_addr_t dma_handle,
  size_t size, enum dma_data_direction dir, unsigned long attrs)
{
 if (!(attrs & DMA_ATTR_SKIP_CPU_SYNC))
  iommu_dma_sync_single_for_cpu(dev, dma_handle, size, dir);
 __iommu_dma_unmap(dev, dma_handle, size);
}
