
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iommu_domain {TYPE_1__* ops; } ;
typedef int phys_addr_t ;
typedef int dma_addr_t ;
struct TYPE_2__ {int (* iova_to_phys ) (struct iommu_domain*,int ) ;} ;


 int stub1 (struct iommu_domain*,int ) ;
 scalar_t__ unlikely (int ) ;

phys_addr_t iommu_iova_to_phys(struct iommu_domain *domain, dma_addr_t iova)
{
 if (unlikely(domain->ops->iova_to_phys == ((void*)0)))
  return 0;

 return domain->ops->iova_to_phys(domain, iova);
}
