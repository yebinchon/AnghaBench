
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct arm_smmu_strtab_l1_desc {int * l2ptr; } ;
struct arm_smmu_strtab_cfg {int * strtab; struct arm_smmu_strtab_l1_desc* l1_desc; } ;
struct arm_smmu_device {int features; struct arm_smmu_strtab_cfg strtab_cfg; } ;
typedef int __le64 ;


 int ARM_SMMU_FEAT_2_LVL_STRTAB ;
 int STRTAB_L1_DESC_DWORDS ;
 int STRTAB_SPLIT ;
 int STRTAB_STE_DWORDS ;

__attribute__((used)) static __le64 *arm_smmu_get_step_for_sid(struct arm_smmu_device *smmu, u32 sid)
{
 __le64 *step;
 struct arm_smmu_strtab_cfg *cfg = &smmu->strtab_cfg;

 if (smmu->features & ARM_SMMU_FEAT_2_LVL_STRTAB) {
  struct arm_smmu_strtab_l1_desc *l1_desc;
  int idx;


  idx = (sid >> STRTAB_SPLIT) * STRTAB_L1_DESC_DWORDS;
  l1_desc = &cfg->l1_desc[idx];
  idx = (sid & ((1 << STRTAB_SPLIT) - 1)) * STRTAB_STE_DWORDS;
  step = &l1_desc->l2ptr[idx];
 } else {

  step = &cfg->strtab[sid * STRTAB_STE_DWORDS];
 }

 return step;
}
