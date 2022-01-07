
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vmid; } ;
struct arm_smmu_domain {TYPE_1__ cfg; struct arm_smmu_device* smmu; } ;
struct arm_smmu_device {int features; } ;


 int ARM_SMMU_FEAT_COHERENT_WALK ;
 int ARM_SMMU_GR0_TLBIVMID ;
 int arm_smmu_gr0_write (struct arm_smmu_device*,int ,int ) ;
 int wmb () ;

__attribute__((used)) static void arm_smmu_tlb_inv_vmid_nosync(unsigned long iova, size_t size,
      size_t granule, bool leaf, void *cookie)
{
 struct arm_smmu_domain *smmu_domain = cookie;
 struct arm_smmu_device *smmu = smmu_domain->smmu;

 if (smmu->features & ARM_SMMU_FEAT_COHERENT_WALK)
  wmb();

 arm_smmu_gr0_write(smmu, ARM_SMMU_GR0_TLBIVMID, smmu_domain->cfg.vmid);
}
