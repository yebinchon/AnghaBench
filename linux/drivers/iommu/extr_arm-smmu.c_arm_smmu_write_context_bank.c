
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct arm_smmu_device {scalar_t__ version; int features; struct arm_smmu_cb* cbs; } ;
struct arm_smmu_cfg {scalar_t__ cbar; scalar_t__ fmt; scalar_t__ vmid; scalar_t__ irptndx; int asid; } ;
struct arm_smmu_cb {int* tcr; int* ttbr; int* mair; struct arm_smmu_cfg* cfg; } ;


 int ARM_SMMU_CB_CONTEXTIDR ;
 int ARM_SMMU_CB_S1_MAIR0 ;
 int ARM_SMMU_CB_S1_MAIR1 ;
 int ARM_SMMU_CB_SCTLR ;
 int ARM_SMMU_CB_TCR ;
 int ARM_SMMU_CB_TCR2 ;
 int ARM_SMMU_CB_TTBR0 ;
 int ARM_SMMU_CB_TTBR1 ;
 scalar_t__ ARM_SMMU_CTX_FMT_AARCH32_S ;
 scalar_t__ ARM_SMMU_CTX_FMT_AARCH64 ;
 int ARM_SMMU_FEAT_VMID16 ;
 int ARM_SMMU_GR1_CBA2R (int) ;
 int ARM_SMMU_GR1_CBAR (int) ;
 scalar_t__ ARM_SMMU_V1 ;
 scalar_t__ ARM_SMMU_V2 ;
 int CBA2R_VA64 ;
 int CBA2R_VMID16 ;
 int CBAR_IRPTNDX ;
 int CBAR_S1_BPSHCFG ;
 scalar_t__ CBAR_S1_BPSHCFG_NSH ;
 int CBAR_S1_MEMATTR ;
 scalar_t__ CBAR_S1_MEMATTR_WB ;
 int CBAR_TYPE ;
 scalar_t__ CBAR_TYPE_S2_TRANS ;
 int CBAR_VMID ;
 int CONFIG_CPU_BIG_ENDIAN ;
 int FIELD_PREP (int ,scalar_t__) ;
 scalar_t__ IS_ENABLED (int ) ;
 int SCTLR_AFE ;
 int SCTLR_CFIE ;
 int SCTLR_CFRE ;
 int SCTLR_E ;
 int SCTLR_M ;
 int SCTLR_S1_ASIDPNE ;
 int SCTLR_TRE ;
 int arm_smmu_cb_write (struct arm_smmu_device*,int,int ,int) ;
 int arm_smmu_cb_writeq (struct arm_smmu_device*,int,int ,int) ;
 int arm_smmu_gr1_write (struct arm_smmu_device*,int ,int) ;

__attribute__((used)) static void arm_smmu_write_context_bank(struct arm_smmu_device *smmu, int idx)
{
 u32 reg;
 bool stage1;
 struct arm_smmu_cb *cb = &smmu->cbs[idx];
 struct arm_smmu_cfg *cfg = cb->cfg;


 if (!cfg) {
  arm_smmu_cb_write(smmu, idx, ARM_SMMU_CB_SCTLR, 0);
  return;
 }

 stage1 = cfg->cbar != CBAR_TYPE_S2_TRANS;


 if (smmu->version > ARM_SMMU_V1) {
  if (cfg->fmt == ARM_SMMU_CTX_FMT_AARCH64)
   reg = CBA2R_VA64;
  else
   reg = 0;

  if (smmu->features & ARM_SMMU_FEAT_VMID16)
   reg |= FIELD_PREP(CBA2R_VMID16, cfg->vmid);

  arm_smmu_gr1_write(smmu, ARM_SMMU_GR1_CBA2R(idx), reg);
 }


 reg = FIELD_PREP(CBAR_TYPE, cfg->cbar);
 if (smmu->version < ARM_SMMU_V2)
  reg |= FIELD_PREP(CBAR_IRPTNDX, cfg->irptndx);





 if (stage1) {
  reg |= FIELD_PREP(CBAR_S1_BPSHCFG, CBAR_S1_BPSHCFG_NSH) |
   FIELD_PREP(CBAR_S1_MEMATTR, CBAR_S1_MEMATTR_WB);
 } else if (!(smmu->features & ARM_SMMU_FEAT_VMID16)) {

  reg |= FIELD_PREP(CBAR_VMID, cfg->vmid);
 }
 arm_smmu_gr1_write(smmu, ARM_SMMU_GR1_CBAR(idx), reg);






 if (stage1 && smmu->version > ARM_SMMU_V1)
  arm_smmu_cb_write(smmu, idx, ARM_SMMU_CB_TCR2, cb->tcr[1]);
 arm_smmu_cb_write(smmu, idx, ARM_SMMU_CB_TCR, cb->tcr[0]);


 if (cfg->fmt == ARM_SMMU_CTX_FMT_AARCH32_S) {
  arm_smmu_cb_write(smmu, idx, ARM_SMMU_CB_CONTEXTIDR, cfg->asid);
  arm_smmu_cb_write(smmu, idx, ARM_SMMU_CB_TTBR0, cb->ttbr[0]);
  arm_smmu_cb_write(smmu, idx, ARM_SMMU_CB_TTBR1, cb->ttbr[1]);
 } else {
  arm_smmu_cb_writeq(smmu, idx, ARM_SMMU_CB_TTBR0, cb->ttbr[0]);
  if (stage1)
   arm_smmu_cb_writeq(smmu, idx, ARM_SMMU_CB_TTBR1,
        cb->ttbr[1]);
 }


 if (stage1) {
  arm_smmu_cb_write(smmu, idx, ARM_SMMU_CB_S1_MAIR0, cb->mair[0]);
  arm_smmu_cb_write(smmu, idx, ARM_SMMU_CB_S1_MAIR1, cb->mair[1]);
 }


 reg = SCTLR_CFIE | SCTLR_CFRE | SCTLR_AFE | SCTLR_TRE | SCTLR_M;
 if (stage1)
  reg |= SCTLR_S1_ASIDPNE;
 if (IS_ENABLED(CONFIG_CPU_BIG_ENDIAN))
  reg |= SCTLR_E;

 arm_smmu_cb_write(smmu, idx, ARM_SMMU_CB_SCTLR, reg);
}
