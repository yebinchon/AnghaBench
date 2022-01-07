
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int asid; int cbndx; } ;
struct arm_smmu_domain {TYPE_1__ cfg; int smmu; } ;


 int ARM_SMMU_CB_S1_TLBIASID ;
 int arm_smmu_cb_write (int ,int ,int ,int ) ;
 int arm_smmu_tlb_sync_context (void*) ;
 int wmb () ;

__attribute__((used)) static void arm_smmu_tlb_inv_context_s1(void *cookie)
{
 struct arm_smmu_domain *smmu_domain = cookie;




 wmb();
 arm_smmu_cb_write(smmu_domain->smmu, smmu_domain->cfg.cbndx,
     ARM_SMMU_CB_S1_TLBIASID, smmu_domain->cfg.asid);
 arm_smmu_tlb_sync_context(cookie);
}
