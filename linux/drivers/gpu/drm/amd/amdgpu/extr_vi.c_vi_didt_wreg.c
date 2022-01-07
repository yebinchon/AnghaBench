
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int didt_idx_lock; } ;


 int WREG32 (int ,int ) ;
 int mmDIDT_IND_DATA ;
 int mmDIDT_IND_INDEX ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void vi_didt_wreg(struct amdgpu_device *adev, u32 reg, u32 v)
{
 unsigned long flags;

 spin_lock_irqsave(&adev->didt_idx_lock, flags);
 WREG32(mmDIDT_IND_INDEX, (reg));
 WREG32(mmDIDT_IND_DATA, (v));
 spin_unlock_irqrestore(&adev->didt_idx_lock, flags);
}
