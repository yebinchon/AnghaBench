
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct arm_smmu_smr {scalar_t__ valid; int mask; int id; } ;
struct arm_smmu_device {int features; struct arm_smmu_smr* smrs; } ;


 int ARM_SMMU_FEAT_EXIDS ;
 int ARM_SMMU_GR0_SMR (int) ;
 int FIELD_PREP (int ,int ) ;
 int SMR_ID ;
 int SMR_MASK ;
 int SMR_VALID ;
 int arm_smmu_gr0_write (struct arm_smmu_device*,int ,int) ;

__attribute__((used)) static void arm_smmu_write_smr(struct arm_smmu_device *smmu, int idx)
{
 struct arm_smmu_smr *smr = smmu->smrs + idx;
 u32 reg = FIELD_PREP(SMR_ID, smr->id) | FIELD_PREP(SMR_MASK, smr->mask);

 if (!(smmu->features & ARM_SMMU_FEAT_EXIDS) && smr->valid)
  reg |= SMR_VALID;
 arm_smmu_gr0_write(smmu, ARM_SMMU_GR0_SMR(idx), reg);
}
