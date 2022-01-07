
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef int dma_addr_t ;


 int __iommu_dma_free (struct device*,size_t,void*) ;
 int __iommu_dma_unmap (struct device*,int ,size_t) ;

__attribute__((used)) static void iommu_dma_free(struct device *dev, size_t size, void *cpu_addr,
  dma_addr_t handle, unsigned long attrs)
{
 __iommu_dma_unmap(dev, handle, size);
 __iommu_dma_free(dev, size, cpu_addr);
}
