
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct arm_smmu_device {int num_mapping_groups; int num_context_banks; int features; TYPE_1__* impl; } ;
struct TYPE_2__ {int (* reset ) (struct arm_smmu_device*) ;} ;


 int ARM_SMMU_CB_FSR ;
 int ARM_SMMU_FEAT_EXIDS ;
 int ARM_SMMU_FEAT_VMID16 ;
 int ARM_SMMU_GR0_TLBIALLH ;
 int ARM_SMMU_GR0_TLBIALLNSNH ;
 int ARM_SMMU_GR0_sCR0 ;
 int ARM_SMMU_GR0_sGFSR ;
 int FSR_FAULT ;
 int QCOM_DUMMY_VAL ;
 int arm_smmu_cb_write (struct arm_smmu_device*,int,int ,int ) ;
 int arm_smmu_gr0_read (struct arm_smmu_device*,int ) ;
 int arm_smmu_gr0_write (struct arm_smmu_device*,int ,int) ;
 int arm_smmu_tlb_sync_global (struct arm_smmu_device*) ;
 int arm_smmu_write_context_bank (struct arm_smmu_device*,int) ;
 int arm_smmu_write_sme (struct arm_smmu_device*,int) ;
 scalar_t__ disable_bypass ;
 int sCR0_BSU ;
 int sCR0_CLIENTPD ;
 int sCR0_EXIDENABLE ;
 int sCR0_FB ;
 int sCR0_GCFGFIE ;
 int sCR0_GCFGFRE ;
 int sCR0_GFIE ;
 int sCR0_GFRE ;
 int sCR0_PTM ;
 int sCR0_USFCFG ;
 int sCR0_VMID16EN ;
 int sCR0_VMIDPNE ;
 int stub1 (struct arm_smmu_device*) ;

__attribute__((used)) static void arm_smmu_device_reset(struct arm_smmu_device *smmu)
{
 int i;
 u32 reg;


 reg = arm_smmu_gr0_read(smmu, ARM_SMMU_GR0_sGFSR);
 arm_smmu_gr0_write(smmu, ARM_SMMU_GR0_sGFSR, reg);





 for (i = 0; i < smmu->num_mapping_groups; ++i)
  arm_smmu_write_sme(smmu, i);


 for (i = 0; i < smmu->num_context_banks; ++i) {
  arm_smmu_write_context_bank(smmu, i);
  arm_smmu_cb_write(smmu, i, ARM_SMMU_CB_FSR, FSR_FAULT);
 }


 arm_smmu_gr0_write(smmu, ARM_SMMU_GR0_TLBIALLH, QCOM_DUMMY_VAL);
 arm_smmu_gr0_write(smmu, ARM_SMMU_GR0_TLBIALLNSNH, QCOM_DUMMY_VAL);

 reg = arm_smmu_gr0_read(smmu, ARM_SMMU_GR0_sCR0);


 reg |= (sCR0_GFRE | sCR0_GFIE | sCR0_GCFGFRE | sCR0_GCFGFIE);


 reg |= (sCR0_VMIDPNE | sCR0_PTM);


 reg &= ~sCR0_CLIENTPD;
 if (disable_bypass)
  reg |= sCR0_USFCFG;
 else
  reg &= ~sCR0_USFCFG;


 reg &= ~sCR0_FB;


 reg &= ~(sCR0_BSU);

 if (smmu->features & ARM_SMMU_FEAT_VMID16)
  reg |= sCR0_VMID16EN;

 if (smmu->features & ARM_SMMU_FEAT_EXIDS)
  reg |= sCR0_EXIDENABLE;

 if (smmu->impl && smmu->impl->reset)
  smmu->impl->reset(smmu);


 arm_smmu_tlb_sync_global(smmu);
 arm_smmu_gr0_write(smmu, ARM_SMMU_GR0_sCR0, reg);
}
