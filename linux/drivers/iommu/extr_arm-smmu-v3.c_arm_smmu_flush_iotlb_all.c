
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_domain {int dummy; } ;
struct arm_smmu_domain {scalar_t__ smmu; } ;


 int arm_smmu_tlb_inv_context (struct arm_smmu_domain*) ;
 struct arm_smmu_domain* to_smmu_domain (struct iommu_domain*) ;

__attribute__((used)) static void arm_smmu_flush_iotlb_all(struct iommu_domain *domain)
{
 struct arm_smmu_domain *smmu_domain = to_smmu_domain(domain);

 if (smmu_domain->smmu)
  arm_smmu_tlb_inv_context(smmu_domain);
}
