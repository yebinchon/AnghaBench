
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_iotlb_gather {int dummy; } ;
struct iommu_domain {int dummy; } ;
struct arm_smmu_domain {struct iommu_domain domain; } ;


 int iommu_iotlb_gather_add_page (struct iommu_domain*,struct iommu_iotlb_gather*,unsigned long,size_t) ;

__attribute__((used)) static void arm_smmu_tlb_inv_page_nosync(struct iommu_iotlb_gather *gather,
      unsigned long iova, size_t granule,
      void *cookie)
{
 struct arm_smmu_domain *smmu_domain = cookie;
 struct iommu_domain *domain = &smmu_domain->domain;

 iommu_iotlb_gather_add_page(domain, gather, iova, granule);
}
