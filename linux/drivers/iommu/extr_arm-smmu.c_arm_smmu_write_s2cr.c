
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct arm_smmu_s2cr {int privcfg; int cbndx; int type; } ;
struct arm_smmu_device {int features; TYPE_1__* smrs; struct arm_smmu_s2cr* s2crs; } ;
struct TYPE_2__ {scalar_t__ valid; } ;


 int ARM_SMMU_FEAT_EXIDS ;
 int ARM_SMMU_GR0_S2CR (int) ;
 int FIELD_PREP (int ,int ) ;
 int S2CR_CBNDX ;
 int S2CR_EXIDVALID ;
 int S2CR_PRIVCFG ;
 int S2CR_TYPE ;
 int arm_smmu_gr0_write (struct arm_smmu_device*,int ,int) ;

__attribute__((used)) static void arm_smmu_write_s2cr(struct arm_smmu_device *smmu, int idx)
{
 struct arm_smmu_s2cr *s2cr = smmu->s2crs + idx;
 u32 reg = FIELD_PREP(S2CR_TYPE, s2cr->type) |
    FIELD_PREP(S2CR_CBNDX, s2cr->cbndx) |
    FIELD_PREP(S2CR_PRIVCFG, s2cr->privcfg);

 if (smmu->features & ARM_SMMU_FEAT_EXIDS && smmu->smrs &&
     smmu->smrs[idx].valid)
  reg |= S2CR_EXIDVALID;
 arm_smmu_gr0_write(smmu, ARM_SMMU_GR0_S2CR(idx), reg);
}
