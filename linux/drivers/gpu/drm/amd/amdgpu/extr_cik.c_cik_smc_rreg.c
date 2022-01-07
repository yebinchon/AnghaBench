
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int smc_idx_lock; } ;


 int RREG32 (int ) ;
 int WREG32 (int ,int ) ;
 int mmSMC_IND_DATA_0 ;
 int mmSMC_IND_INDEX_0 ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static u32 cik_smc_rreg(struct amdgpu_device *adev, u32 reg)
{
 unsigned long flags;
 u32 r;

 spin_lock_irqsave(&adev->smc_idx_lock, flags);
 WREG32(mmSMC_IND_INDEX_0, (reg));
 r = RREG32(mmSMC_IND_DATA_0);
 spin_unlock_irqrestore(&adev->smc_idx_lock, flags);
 return r;
}
