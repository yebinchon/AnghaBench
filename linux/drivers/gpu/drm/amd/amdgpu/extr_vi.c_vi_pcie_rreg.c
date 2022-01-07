
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int pcie_idx_lock; } ;


 int RREG32_NO_KIQ (int ) ;
 int WREG32_NO_KIQ (int ,int ) ;
 int mmPCIE_DATA ;
 int mmPCIE_INDEX ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static u32 vi_pcie_rreg(struct amdgpu_device *adev, u32 reg)
{
 unsigned long flags;
 u32 r;

 spin_lock_irqsave(&adev->pcie_idx_lock, flags);
 WREG32_NO_KIQ(mmPCIE_INDEX, reg);
 (void)RREG32_NO_KIQ(mmPCIE_INDEX);
 r = RREG32_NO_KIQ(mmPCIE_DATA);
 spin_unlock_irqrestore(&adev->pcie_idx_lock, flags);
 return r;
}
