
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arm_smmu_domain {int smmu; } ;


 int arm_smmu_tlb_sync_global (int ) ;

__attribute__((used)) static void arm_smmu_tlb_sync_vmid(void *cookie)
{
 struct arm_smmu_domain *smmu_domain = cookie;

 arm_smmu_tlb_sync_global(smmu_domain->smmu);
}
