
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arm_smmu_device {int dummy; } ;


 int arm_smmu_init_queues (struct arm_smmu_device*) ;
 int arm_smmu_init_strtab (struct arm_smmu_device*) ;

__attribute__((used)) static int arm_smmu_init_structures(struct arm_smmu_device *smmu)
{
 int ret;

 ret = arm_smmu_init_queues(smmu);
 if (ret)
  return ret;

 return arm_smmu_init_strtab(smmu);
}
