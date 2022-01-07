
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int pcie_idx_lock; } ;
typedef int reg ;


 int EVERGREEN_PIF_PHY0_DATA ;
 int EVERGREEN_PIF_PHY0_INDEX ;
 int RREG32 (int ) ;
 int WREG32 (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline u32 si_pif_phy0_rreg(struct amdgpu_device *adev, u32 reg)
{
 unsigned long flags;
 u32 r;

 spin_lock_irqsave(&adev->pcie_idx_lock, flags);
 WREG32(EVERGREEN_PIF_PHY0_INDEX, ((reg) & 0xffff));
 r = RREG32(EVERGREEN_PIF_PHY0_DATA);
 spin_unlock_irqrestore(&adev->pcie_idx_lock, flags);
 return r;
}
