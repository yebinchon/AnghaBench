
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_iotlb_gather {int dummy; } ;
struct iommu_domain {int dummy; } ;


 int qcom_iommu_flush_iotlb_all (struct iommu_domain*) ;

__attribute__((used)) static void qcom_iommu_iotlb_sync(struct iommu_domain *domain,
      struct iommu_iotlb_gather *gather)
{
 qcom_iommu_flush_iotlb_all(domain);
}
