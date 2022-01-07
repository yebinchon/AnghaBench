
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int se_cac_idx_lock; } ;


 int GC ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int WREG32_SOC15 (int ,int ,int ,int ) ;
 int mmSE_CAC_IND_DATA ;
 int mmSE_CAC_IND_INDEX ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static u32 soc15_se_cac_rreg(struct amdgpu_device *adev, u32 reg)
{
 unsigned long flags;
 u32 r;

 spin_lock_irqsave(&adev->se_cac_idx_lock, flags);
 WREG32_SOC15(GC, 0, mmSE_CAC_IND_INDEX, (reg));
 r = RREG32_SOC15(GC, 0, mmSE_CAC_IND_DATA);
 spin_unlock_irqrestore(&adev->se_cac_idx_lock, flags);
 return r;
}
