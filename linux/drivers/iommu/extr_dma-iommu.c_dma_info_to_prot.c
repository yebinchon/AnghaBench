
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 unsigned long DMA_ATTR_PRIVILEGED ;



 int IOMMU_CACHE ;
 int IOMMU_PRIV ;
 int IOMMU_READ ;
 int IOMMU_WRITE ;

__attribute__((used)) static int dma_info_to_prot(enum dma_data_direction dir, bool coherent,
       unsigned long attrs)
{
 int prot = coherent ? IOMMU_CACHE : 0;

 if (attrs & DMA_ATTR_PRIVILEGED)
  prot |= IOMMU_PRIV;

 switch (dir) {
 case 130:
  return prot | IOMMU_READ | IOMMU_WRITE;
 case 128:
  return prot | IOMMU_READ;
 case 129:
  return prot | IOMMU_WRITE;
 default:
  return 0;
 }
}
