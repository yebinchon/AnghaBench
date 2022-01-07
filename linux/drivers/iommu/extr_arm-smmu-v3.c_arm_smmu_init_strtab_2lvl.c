
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
 int STRTAB_BASE_CFG_FMT_2LVL ;
 int STRTAB_BASE_CFG_LOG2SIZE ;
 int STRTAB_BASE_CFG_SPLIT ;
 int STRTAB_L1_DESC_DWORDS ;
 int STRTAB_L1_SZ_SHIFT ;
 int STRTAB_SPLIT ;
 int __GFP_ZERO ;
 int arm_smmu_init_l1_strtab (struct arm_smmu_device*) ;
 int dev_err (int ,char*,int) ;
 int dev_warn (int ,char*,int,int) ;
 void* dmam_alloc_coherent (int ,int,int *,int) ;
 int ilog2 (int) ;
 int min (int,int) ;

__attribute__((used)) static int arm_smmu_init_strtab_2lvl(struct arm_smmu_device *smmu)
{
 void *strtab;
 u64 reg;
 u32 size, l1size;
 struct arm_smmu_strtab_cfg *cfg = &smmu->strtab_cfg;


 size = STRTAB_L1_SZ_SHIFT - (ilog2(STRTAB_L1_DESC_DWORDS) + 3);
 size = min(size, smmu->sid_bits - STRTAB_SPLIT);
 cfg->num_l1_ents = 1 << size;

 size += STRTAB_SPLIT;
 if (size < smmu->sid_bits)
  dev_warn(smmu->dev,
    "2-level strtab only covers %u/%u bits of SID\n",
    size, smmu->sid_bits);

 l1size = cfg->num_l1_ents * (STRTAB_L1_DESC_DWORDS << 3);
 strtab = dmam_alloc_coherent(smmu->dev, l1size, &cfg->strtab_dma,
         GFP_KERNEL | __GFP_ZERO);
 if (!strtab) {
  dev_err(smmu->dev,
   "failed to allocate l1 stream table (%u bytes)\n",
   size);
  return -ENOMEM;
 }
 cfg->strtab = strtab;


 reg = FIELD_PREP(STRTAB_BASE_CFG_FMT, STRTAB_BASE_CFG_FMT_2LVL);
 reg |= FIELD_PREP(STRTAB_BASE_CFG_LOG2SIZE, size);
 reg |= FIELD_PREP(STRTAB_BASE_CFG_SPLIT, STRTAB_SPLIT);
 cfg->strtab_base_cfg = reg;

 return arm_smmu_init_l1_strtab(smmu);
}
