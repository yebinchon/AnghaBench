
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct arm_smmu_strtab_cfg {int num_l1_ents; int strtab_base_cfg; void* strtab; int strtab_dma; } ;
struct arm_smmu_device {int sid_bits; int dev; struct arm_smmu_strtab_cfg strtab_cfg; } ;


 int ENOMEM ;
 int FIELD_PREP (int ,int) ;
 int GFP_KERNEL ;
 int STRTAB_BASE_CFG_FMT ;
 int STRTAB_BASE_CFG_FMT_LINEAR ;
 int STRTAB_BASE_CFG_LOG2SIZE ;
 int STRTAB_STE_DWORDS ;
 int __GFP_ZERO ;
 int arm_smmu_init_bypass_stes (void*,int) ;
 int dev_err (int ,char*,int) ;
 void* dmam_alloc_coherent (int ,int,int *,int) ;

__attribute__((used)) static int arm_smmu_init_strtab_linear(struct arm_smmu_device *smmu)
{
 void *strtab;
 u64 reg;
 u32 size;
 struct arm_smmu_strtab_cfg *cfg = &smmu->strtab_cfg;

 size = (1 << smmu->sid_bits) * (STRTAB_STE_DWORDS << 3);
 strtab = dmam_alloc_coherent(smmu->dev, size, &cfg->strtab_dma,
         GFP_KERNEL | __GFP_ZERO);
 if (!strtab) {
  dev_err(smmu->dev,
   "failed to allocate linear stream table (%u bytes)\n",
   size);
  return -ENOMEM;
 }
 cfg->strtab = strtab;
 cfg->num_l1_ents = 1 << smmu->sid_bits;


 reg = FIELD_PREP(STRTAB_BASE_CFG_FMT, STRTAB_BASE_CFG_FMT_LINEAR);
 reg |= FIELD_PREP(STRTAB_BASE_CFG_LOG2SIZE, smmu->sid_bits);
 cfg->strtab_base_cfg = reg;

 arm_smmu_init_bypass_stes(strtab, cfg->num_l1_ents);
 return 0;
}
