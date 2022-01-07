
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_iotlb_gather {int dummy; } ;
struct iommu_domain {int dummy; } ;


 int gart_iommu_sync_map (struct iommu_domain*) ;

__attribute__((used)) static void gart_iommu_sync(struct iommu_domain *domain,
       struct iommu_iotlb_gather *gather)
{
 gart_iommu_sync_map(domain);
}
