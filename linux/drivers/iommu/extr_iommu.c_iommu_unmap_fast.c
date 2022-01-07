
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_iotlb_gather {int dummy; } ;
struct iommu_domain {int dummy; } ;


 size_t __iommu_unmap (struct iommu_domain*,unsigned long,size_t,struct iommu_iotlb_gather*) ;

size_t iommu_unmap_fast(struct iommu_domain *domain,
   unsigned long iova, size_t size,
   struct iommu_iotlb_gather *iotlb_gather)
{
 return __iommu_unmap(domain, iova, size, iotlb_gather);
}
