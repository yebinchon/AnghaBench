
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vmid; } ;
struct arm_smmu_domain {TYPE_1__ cfg; struct arm_smmu_device* smmu; } ;
struct arm_smmu_device {int dummy; } ;


 int ARM_SMMU_GR0_TLBIVMID ;
 int arm_smmu_gr0_write (struct arm_smmu_device*,int ,int ) ;
 int arm_smmu_tlb_sync_global (struct arm_smmu_device*) ;
 int wmb () ;

__attribute__((used)) static void arm_smmu_tlb_inv_context_s2(void *cookie)
{
 struct arm_smmu_domain *smmu_domain = cookie;
 struct arm_smmu_device *smmu = smmu_domain->smmu;


 wmb();
 arm_smmu_gr0_write(smmu, ARM_SMMU_GR0_TLBIVMID, smmu_domain->cfg.vmid);
 arm_smmu_tlb_sync_global(smmu);
}
