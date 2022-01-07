
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_domain {int pgsize_bitmap; } ;
struct device {int dummy; } ;


 unsigned long __ffs (int ) ;
 struct iommu_domain* iommu_get_dma_domain (struct device*) ;

__attribute__((used)) static unsigned long iommu_dma_get_merge_boundary(struct device *dev)
{
 struct iommu_domain *domain = iommu_get_dma_domain(dev);

 return (1UL << __ffs(domain->pgsize_bitmap)) - 1;
}
