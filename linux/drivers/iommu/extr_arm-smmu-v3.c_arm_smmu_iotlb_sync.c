
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_iotlb_gather {int pgsize; scalar_t__ start; scalar_t__ end; } ;
struct iommu_domain {int dummy; } ;
struct arm_smmu_domain {int dummy; } ;


 int arm_smmu_tlb_inv_range (scalar_t__,scalar_t__,int ,int,struct arm_smmu_domain*) ;
 struct arm_smmu_domain* to_smmu_domain (struct iommu_domain*) ;

__attribute__((used)) static void arm_smmu_iotlb_sync(struct iommu_domain *domain,
    struct iommu_iotlb_gather *gather)
{
 struct arm_smmu_domain *smmu_domain = to_smmu_domain(domain);

 arm_smmu_tlb_inv_range(gather->start, gather->end - gather->start,
          gather->pgsize, 1, smmu_domain);
}
