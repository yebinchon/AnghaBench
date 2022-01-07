
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct arm_smmu_device {int num_context_banks; } ;


 int ARM_MMU500_ACR_CACHE_LOCK ;
 int ARM_MMU500_ACR_S2CRB_TLBEN ;
 int ARM_MMU500_ACR_SMTNMB_TLBEN ;
 int ARM_MMU500_ACTLR_CPRE ;
 int ARM_SMMU_CB_ACTLR ;
 int ARM_SMMU_GR0_ID7 ;
 int ARM_SMMU_GR0_sACR ;
 int FIELD_GET (int ,int) ;
 int ID7_MAJOR ;
 int arm_smmu_cb_read (struct arm_smmu_device*,int,int ) ;
 int arm_smmu_cb_write (struct arm_smmu_device*,int,int ,int) ;
 int arm_smmu_gr0_read (struct arm_smmu_device*,int ) ;
 int arm_smmu_gr0_write (struct arm_smmu_device*,int ,int) ;

__attribute__((used)) static int arm_mmu500_reset(struct arm_smmu_device *smmu)
{
 u32 reg, major;
 int i;





 reg = arm_smmu_gr0_read(smmu, ARM_SMMU_GR0_ID7);
 major = FIELD_GET(ID7_MAJOR, reg);
 reg = arm_smmu_gr0_read(smmu, ARM_SMMU_GR0_sACR);
 if (major >= 2)
  reg &= ~ARM_MMU500_ACR_CACHE_LOCK;




 reg |= ARM_MMU500_ACR_SMTNMB_TLBEN | ARM_MMU500_ACR_S2CRB_TLBEN;
 arm_smmu_gr0_write(smmu, ARM_SMMU_GR0_sACR, reg);





 for (i = 0; i < smmu->num_context_banks; ++i) {
  reg = arm_smmu_cb_read(smmu, i, ARM_SMMU_CB_ACTLR);
  reg &= ~ARM_MMU500_ACTLR_CPRE;
  arm_smmu_cb_write(smmu, i, ARM_SMMU_CB_ACTLR, reg);
 }

 return 0;
}
