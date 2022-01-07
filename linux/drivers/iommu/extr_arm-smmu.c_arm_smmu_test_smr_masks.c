
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct arm_smmu_device {void* smr_mask_mask; void* streamid_mask; int smrs; } ;


 int ARM_SMMU_GR0_SMR (int ) ;
 void* FIELD_GET (int ,int ) ;
 int FIELD_PREP (int ,void*) ;
 int SMR_ID ;
 int SMR_MASK ;
 int arm_smmu_gr0_read (struct arm_smmu_device*,int ) ;
 int arm_smmu_gr0_write (struct arm_smmu_device*,int ,int ) ;

__attribute__((used)) static void arm_smmu_test_smr_masks(struct arm_smmu_device *smmu)
{
 u32 smr;

 if (!smmu->smrs)
  return;






 smr = FIELD_PREP(SMR_ID, smmu->streamid_mask);
 arm_smmu_gr0_write(smmu, ARM_SMMU_GR0_SMR(0), smr);
 smr = arm_smmu_gr0_read(smmu, ARM_SMMU_GR0_SMR(0));
 smmu->streamid_mask = FIELD_GET(SMR_ID, smr);

 smr = FIELD_PREP(SMR_MASK, smmu->streamid_mask);
 arm_smmu_gr0_write(smmu, ARM_SMMU_GR0_SMR(0), smr);
 smr = arm_smmu_gr0_read(smmu, ARM_SMMU_GR0_SMR(0));
 smmu->smr_mask_mask = FIELD_GET(SMR_MASK, smr);
}
