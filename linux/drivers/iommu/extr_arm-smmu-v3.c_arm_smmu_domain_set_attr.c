
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_domain {int type; } ;
struct arm_smmu_domain {int non_strict; int init_mutex; int stage; int smmu; } ;
typedef enum iommu_attr { ____Placeholder_iommu_attr } iommu_attr ;


 int ARM_SMMU_DOMAIN_NESTED ;
 int ARM_SMMU_DOMAIN_S1 ;


 int EINVAL ;
 int ENODEV ;
 int EPERM ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct arm_smmu_domain* to_smmu_domain (struct iommu_domain*) ;

__attribute__((used)) static int arm_smmu_domain_set_attr(struct iommu_domain *domain,
        enum iommu_attr attr, void *data)
{
 int ret = 0;
 struct arm_smmu_domain *smmu_domain = to_smmu_domain(domain);

 mutex_lock(&smmu_domain->init_mutex);

 switch (domain->type) {
 case 128:
  switch (attr) {
  case 130:
   if (smmu_domain->smmu) {
    ret = -EPERM;
    goto out_unlock;
   }

   if (*(int *)data)
    smmu_domain->stage = ARM_SMMU_DOMAIN_NESTED;
   else
    smmu_domain->stage = ARM_SMMU_DOMAIN_S1;
   break;
  default:
   ret = -ENODEV;
  }
  break;
 case 129:
  switch(attr) {
  case 131:
   smmu_domain->non_strict = *(int *)data;
   break;
  default:
   ret = -ENODEV;
  }
  break;
 default:
  ret = -EINVAL;
 }

out_unlock:
 mutex_unlock(&smmu_domain->init_mutex);
 return ret;
}
