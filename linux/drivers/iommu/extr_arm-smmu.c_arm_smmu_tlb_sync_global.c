
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arm_smmu_device {int global_sync_lock; } ;


 int ARM_SMMU_GR0 ;
 int ARM_SMMU_GR0_sTLBGSTATUS ;
 int ARM_SMMU_GR0_sTLBGSYNC ;
 int __arm_smmu_tlb_sync (struct arm_smmu_device*,int ,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void arm_smmu_tlb_sync_global(struct arm_smmu_device *smmu)
{
 unsigned long flags;

 spin_lock_irqsave(&smmu->global_sync_lock, flags);
 __arm_smmu_tlb_sync(smmu, ARM_SMMU_GR0, ARM_SMMU_GR0_sTLBGSYNC,
       ARM_SMMU_GR0_sTLBGSTATUS);
 spin_unlock_irqrestore(&smmu->global_sync_lock, flags);
}
