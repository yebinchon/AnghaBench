
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int strtab_dma; int strtab_base; } ;
struct arm_smmu_device {int features; int vmid_map; TYPE_1__ strtab_cfg; } ;


 int ARM_SMMU_FEAT_2_LVL_STRTAB ;
 int STRTAB_BASE_ADDR_MASK ;
 int STRTAB_BASE_RA ;
 int arm_smmu_init_strtab_2lvl (struct arm_smmu_device*) ;
 int arm_smmu_init_strtab_linear (struct arm_smmu_device*) ;
 int set_bit (int ,int ) ;

__attribute__((used)) static int arm_smmu_init_strtab(struct arm_smmu_device *smmu)
{
 u64 reg;
 int ret;

 if (smmu->features & ARM_SMMU_FEAT_2_LVL_STRTAB)
  ret = arm_smmu_init_strtab_2lvl(smmu);
 else
  ret = arm_smmu_init_strtab_linear(smmu);

 if (ret)
  return ret;


 reg = smmu->strtab_cfg.strtab_dma & STRTAB_BASE_ADDR_MASK;
 reg |= STRTAB_BASE_RA;
 smmu->strtab_cfg.strtab_base = reg;


 set_bit(0, smmu->vmid_map);
 return 0;
}
