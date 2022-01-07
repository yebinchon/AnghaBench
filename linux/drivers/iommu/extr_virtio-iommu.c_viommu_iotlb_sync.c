
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct viommu_domain {int viommu; } ;
struct iommu_iotlb_gather {int dummy; } ;
struct iommu_domain {int dummy; } ;


 struct viommu_domain* to_viommu_domain (struct iommu_domain*) ;
 int viommu_sync_req (int ) ;

__attribute__((used)) static void viommu_iotlb_sync(struct iommu_domain *domain,
         struct iommu_iotlb_gather *gather)
{
 struct viommu_domain *vdomain = to_viommu_domain(domain);

 viommu_sync_req(vdomain->viommu);
}
