
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int pcie_idx_lock; } ;


 int AMDGPU_PCIE_DATA ;
 int AMDGPU_PCIE_INDEX ;
 int RREG32 (int ) ;
 int WREG32 (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static u32 si_pcie_rreg(struct amdgpu_device *adev, u32 reg)
{
 unsigned long flags;
 u32 r;

 spin_lock_irqsave(&adev->pcie_idx_lock, flags);
 WREG32(AMDGPU_PCIE_INDEX, reg);
 (void)RREG32(AMDGPU_PCIE_INDEX);
 r = RREG32(AMDGPU_PCIE_DATA);
 spin_unlock_irqrestore(&adev->pcie_idx_lock, flags);
 return r;
}
