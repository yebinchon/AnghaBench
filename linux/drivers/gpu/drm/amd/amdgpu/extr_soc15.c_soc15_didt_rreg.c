
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int didt_idx_lock; } ;


 int GC ;
 int RREG32 (unsigned long) ;
 unsigned long SOC15_REG_OFFSET (int ,int ,int ) ;
 int WREG32 (unsigned long,int ) ;
 int mmDIDT_IND_DATA ;
 int mmDIDT_IND_INDEX ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static u32 soc15_didt_rreg(struct amdgpu_device *adev, u32 reg)
{
 unsigned long flags, address, data;
 u32 r;

 address = SOC15_REG_OFFSET(GC, 0, mmDIDT_IND_INDEX);
 data = SOC15_REG_OFFSET(GC, 0, mmDIDT_IND_DATA);

 spin_lock_irqsave(&adev->didt_idx_lock, flags);
 WREG32(address, (reg));
 r = RREG32(data);
 spin_unlock_irqrestore(&adev->didt_idx_lock, flags);
 return r;
}
