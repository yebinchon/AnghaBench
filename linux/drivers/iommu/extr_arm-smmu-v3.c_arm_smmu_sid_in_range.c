
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long u32 ;
struct TYPE_2__ {unsigned long num_l1_ents; } ;
struct arm_smmu_device {int features; TYPE_1__ strtab_cfg; } ;


 int ARM_SMMU_FEAT_2_LVL_STRTAB ;
 unsigned long STRTAB_SPLIT ;

__attribute__((used)) static bool arm_smmu_sid_in_range(struct arm_smmu_device *smmu, u32 sid)
{
 unsigned long limit = smmu->strtab_cfg.num_l1_ents;

 if (smmu->features & ARM_SMMU_FEAT_2_LVL_STRTAB)
  limit *= 1UL << STRTAB_SPLIT;

 return sid < limit;
}
