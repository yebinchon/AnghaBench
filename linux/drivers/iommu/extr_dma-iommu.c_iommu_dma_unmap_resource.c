
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_addr_t ;


 int __iommu_dma_unmap (struct device*,int ,size_t) ;

__attribute__((used)) static void iommu_dma_unmap_resource(struct device *dev, dma_addr_t handle,
  size_t size, enum dma_data_direction dir, unsigned long attrs)
{
 __iommu_dma_unmap(dev, handle, size);
}
