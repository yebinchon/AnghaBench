
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arm_smmu_strtab_cfg {int num_l1_ents; int * l1_desc; void* strtab; } ;
struct arm_smmu_device {int dev; struct arm_smmu_strtab_cfg strtab_cfg; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int STRTAB_L1_DESC_DWORDS ;
 int arm_smmu_write_strtab_l1_desc (void*,int *) ;
 int dev_err (int ,char*) ;
 int * devm_kzalloc (int ,size_t,int ) ;

__attribute__((used)) static int arm_smmu_init_l1_strtab(struct arm_smmu_device *smmu)
{
 unsigned int i;
 struct arm_smmu_strtab_cfg *cfg = &smmu->strtab_cfg;
 size_t size = sizeof(*cfg->l1_desc) * cfg->num_l1_ents;
 void *strtab = smmu->strtab_cfg.strtab;

 cfg->l1_desc = devm_kzalloc(smmu->dev, size, GFP_KERNEL);
 if (!cfg->l1_desc) {
  dev_err(smmu->dev, "failed to allocate l1 stream table desc\n");
  return -ENOMEM;
 }

 for (i = 0; i < cfg->num_l1_ents; ++i) {
  arm_smmu_write_strtab_l1_desc(strtab, &cfg->l1_desc[i]);
  strtab += STRTAB_L1_DESC_DWORDS << 3;
 }

 return 0;
}
