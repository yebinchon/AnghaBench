
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int smc_idx_lock; } ;


 int WREG32_NO_KIQ (int ,int ) ;
 int mmSMC_IND_DATA_11 ;
 int mmSMC_IND_INDEX_11 ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void vi_smc_wreg(struct amdgpu_device *adev, u32 reg, u32 v)
{
 unsigned long flags;

 spin_lock_irqsave(&adev->smc_idx_lock, flags);
 WREG32_NO_KIQ(mmSMC_IND_INDEX_11, (reg));
 WREG32_NO_KIQ(mmSMC_IND_DATA_11, (v));
 spin_unlock_irqrestore(&adev->smc_idx_lock, flags);
}
