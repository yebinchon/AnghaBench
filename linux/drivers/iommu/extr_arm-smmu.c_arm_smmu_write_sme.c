
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arm_smmu_device {scalar_t__ smrs; } ;


 int arm_smmu_write_s2cr (struct arm_smmu_device*,int) ;
 int arm_smmu_write_smr (struct arm_smmu_device*,int) ;

__attribute__((used)) static void arm_smmu_write_sme(struct arm_smmu_device *smmu, int idx)
{
 arm_smmu_write_s2cr(smmu, idx);
 if (smmu->smrs)
  arm_smmu_write_smr(smmu, idx);
}
