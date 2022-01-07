
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int vtcr; int vttbr; } ;
struct io_pgtable_cfg {TYPE_1__ arm_lpae_s2_cfg; } ;
struct arm_smmu_s2_cfg {int vtcr; int vttbr; int vmid; } ;
struct arm_smmu_domain {struct arm_smmu_s2_cfg s2_cfg; struct arm_smmu_device* smmu; } ;
struct arm_smmu_device {int vmid_bits; int vmid_map; } ;


 int arm_smmu_bitmap_alloc (int ,int ) ;

__attribute__((used)) static int arm_smmu_domain_finalise_s2(struct arm_smmu_domain *smmu_domain,
           struct io_pgtable_cfg *pgtbl_cfg)
{
 int vmid;
 struct arm_smmu_device *smmu = smmu_domain->smmu;
 struct arm_smmu_s2_cfg *cfg = &smmu_domain->s2_cfg;

 vmid = arm_smmu_bitmap_alloc(smmu->vmid_map, smmu->vmid_bits);
 if (vmid < 0)
  return vmid;

 cfg->vmid = (u16)vmid;
 cfg->vttbr = pgtbl_cfg->arm_lpae_s2_cfg.vttbr;
 cfg->vtcr = pgtbl_cfg->arm_lpae_s2_cfg.vtcr;
 return 0;
}
