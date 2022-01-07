
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arm_smmu_device {int dev; } ;


 int ARM_SMMU_CR0 ;
 int ARM_SMMU_CR0ACK ;
 int arm_smmu_write_reg_sync (struct arm_smmu_device*,int ,int ,int ) ;
 int dev_err (int ,char*) ;

__attribute__((used)) static int arm_smmu_device_disable(struct arm_smmu_device *smmu)
{
 int ret;

 ret = arm_smmu_write_reg_sync(smmu, 0, ARM_SMMU_CR0, ARM_SMMU_CR0ACK);
 if (ret)
  dev_err(smmu->dev, "failed to clear cr0\n");

 return ret;
}
