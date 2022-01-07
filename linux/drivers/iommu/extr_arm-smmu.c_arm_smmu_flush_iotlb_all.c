
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iommu_domain {int dummy; } ;
struct arm_smmu_domain {TYPE_2__* flush_ops; struct arm_smmu_device* smmu; } ;
struct arm_smmu_device {int dummy; } ;
struct TYPE_3__ {int (* tlb_flush_all ) (struct arm_smmu_domain*) ;} ;
struct TYPE_4__ {TYPE_1__ tlb; } ;


 int arm_smmu_rpm_get (struct arm_smmu_device*) ;
 int arm_smmu_rpm_put (struct arm_smmu_device*) ;
 int stub1 (struct arm_smmu_domain*) ;
 struct arm_smmu_domain* to_smmu_domain (struct iommu_domain*) ;

__attribute__((used)) static void arm_smmu_flush_iotlb_all(struct iommu_domain *domain)
{
 struct arm_smmu_domain *smmu_domain = to_smmu_domain(domain);
 struct arm_smmu_device *smmu = smmu_domain->smmu;

 if (smmu_domain->flush_ops) {
  arm_smmu_rpm_get(smmu);
  smmu_domain->flush_ops->tlb.tlb_flush_all(smmu_domain);
  arm_smmu_rpm_put(smmu);
 }
}
