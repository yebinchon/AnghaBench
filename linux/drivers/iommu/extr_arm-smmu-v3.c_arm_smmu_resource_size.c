
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arm_smmu_device {int options; } ;


 int ARM_SMMU_OPT_PAGE0_REGS_ONLY ;
 unsigned long SZ_128K ;
 unsigned long SZ_64K ;

__attribute__((used)) static unsigned long arm_smmu_resource_size(struct arm_smmu_device *smmu)
{
 if (smmu->options & ARM_SMMU_OPT_PAGE0_REGS_ONLY)
  return SZ_64K;
 else
  return SZ_128K;
}
