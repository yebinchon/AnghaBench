
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_domain {int type; } ;
struct arm_smmu_domain {int non_strict; int stage; } ;
typedef enum iommu_attr { ____Placeholder_iommu_attr } iommu_attr ;


 int ARM_SMMU_DOMAIN_NESTED ;


 int EINVAL ;
 int ENODEV ;


 struct arm_smmu_domain* to_smmu_domain (struct iommu_domain*) ;

__attribute__((used)) static int arm_smmu_domain_get_attr(struct iommu_domain *domain,
        enum iommu_attr attr, void *data)
{
 struct arm_smmu_domain *smmu_domain = to_smmu_domain(domain);

 switch(domain->type) {
 case 128:
  switch (attr) {
  case 130:
   *(int *)data = (smmu_domain->stage == ARM_SMMU_DOMAIN_NESTED);
   return 0;
  default:
   return -ENODEV;
  }
  break;
 case 129:
  switch (attr) {
  case 131:
   *(int *)data = smmu_domain->non_strict;
   return 0;
  default:
   return -ENODEV;
  }
  break;
 default:
  return -EINVAL;
 }
}
