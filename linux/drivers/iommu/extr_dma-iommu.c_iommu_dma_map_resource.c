
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int phys_addr_t ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_addr_t ;


 int IOMMU_MMIO ;
 int __iommu_dma_map (struct device*,int ,size_t,int) ;
 int dma_info_to_prot (int,int,unsigned long) ;

__attribute__((used)) static dma_addr_t iommu_dma_map_resource(struct device *dev, phys_addr_t phys,
  size_t size, enum dma_data_direction dir, unsigned long attrs)
{
 return __iommu_dma_map(dev, phys, size,
   dma_info_to_prot(dir, 0, attrs) | IOMMU_MMIO);
}
