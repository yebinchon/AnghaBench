
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_4__ {int * mair; int tcr; int * ttbr; } ;
struct io_pgtable_cfg {TYPE_2__ arm_lpae_s1_cfg; } ;
struct TYPE_3__ {int mair; int tcr; int ttbr; int asid; } ;
struct arm_smmu_s1_cfg {TYPE_1__ cd; int cdptr; int cdptr_dma; } ;
struct arm_smmu_domain {struct arm_smmu_s1_cfg s1_cfg; struct arm_smmu_device* smmu; } ;
struct arm_smmu_device {int asid_map; int dev; int asid_bits; } ;


 int CTXDESC_CD_DWORDS ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int __GFP_ZERO ;
 int arm_smmu_bitmap_alloc (int ,int ) ;
 int arm_smmu_bitmap_free (int ,int) ;
 int dev_warn (int ,char*) ;
 int dmam_alloc_coherent (int ,int,int *,int) ;

__attribute__((used)) static int arm_smmu_domain_finalise_s1(struct arm_smmu_domain *smmu_domain,
           struct io_pgtable_cfg *pgtbl_cfg)
{
 int ret;
 int asid;
 struct arm_smmu_device *smmu = smmu_domain->smmu;
 struct arm_smmu_s1_cfg *cfg = &smmu_domain->s1_cfg;

 asid = arm_smmu_bitmap_alloc(smmu->asid_map, smmu->asid_bits);
 if (asid < 0)
  return asid;

 cfg->cdptr = dmam_alloc_coherent(smmu->dev, CTXDESC_CD_DWORDS << 3,
      &cfg->cdptr_dma,
      GFP_KERNEL | __GFP_ZERO);
 if (!cfg->cdptr) {
  dev_warn(smmu->dev, "failed to allocate context descriptor\n");
  ret = -ENOMEM;
  goto out_free_asid;
 }

 cfg->cd.asid = (u16)asid;
 cfg->cd.ttbr = pgtbl_cfg->arm_lpae_s1_cfg.ttbr[0];
 cfg->cd.tcr = pgtbl_cfg->arm_lpae_s1_cfg.tcr;
 cfg->cd.mair = pgtbl_cfg->arm_lpae_s1_cfg.mair[0];
 return 0;

out_free_asid:
 arm_smmu_bitmap_free(smmu->asid_map, asid);
 return ret;
}
