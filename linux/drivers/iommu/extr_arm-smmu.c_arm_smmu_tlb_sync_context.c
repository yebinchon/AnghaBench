
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cbndx; } ;
struct arm_smmu_domain {int cb_lock; TYPE_1__ cfg; struct arm_smmu_device* smmu; } ;
struct arm_smmu_device {int dummy; } ;


 int ARM_SMMU_CB (struct arm_smmu_device*,int ) ;
 int ARM_SMMU_CB_TLBSTATUS ;
 int ARM_SMMU_CB_TLBSYNC ;
 int __arm_smmu_tlb_sync (struct arm_smmu_device*,int ,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void arm_smmu_tlb_sync_context(void *cookie)
{
 struct arm_smmu_domain *smmu_domain = cookie;
 struct arm_smmu_device *smmu = smmu_domain->smmu;
 unsigned long flags;

 spin_lock_irqsave(&smmu_domain->cb_lock, flags);
 __arm_smmu_tlb_sync(smmu, ARM_SMMU_CB(smmu, smmu_domain->cfg.cbndx),
       ARM_SMMU_CB_TLBSYNC, ARM_SMMU_CB_TLBSTATUS);
 spin_unlock_irqrestore(&smmu_domain->cb_lock, flags);
}
