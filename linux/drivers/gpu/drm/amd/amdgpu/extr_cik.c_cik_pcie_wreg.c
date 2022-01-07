
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int pcie_idx_lock; } ;


 int RREG32 (int ) ;
 int WREG32 (int ,int ) ;
 int mmPCIE_DATA ;
 int mmPCIE_INDEX ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void cik_pcie_wreg(struct amdgpu_device *adev, u32 reg, u32 v)
{
 unsigned long flags;

 spin_lock_irqsave(&adev->pcie_idx_lock, flags);
 WREG32(mmPCIE_INDEX, reg);
 (void)RREG32(mmPCIE_INDEX);
 WREG32(mmPCIE_DATA, v);
 (void)RREG32(mmPCIE_DATA);
 spin_unlock_irqrestore(&adev->pcie_idx_lock, flags);
}
