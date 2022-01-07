
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int uvd_ctx_idx_lock; } ;
typedef int reg ;


 int RREG32 (unsigned long) ;
 unsigned long SOC15_REG_OFFSET (int ,int ,int ) ;
 int UVD ;
 int WREG32 (unsigned long,int ) ;
 int mmUVD_CTX_DATA ;
 int mmUVD_CTX_INDEX ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static u32 soc15_uvd_ctx_rreg(struct amdgpu_device *adev, u32 reg)
{
 unsigned long flags, address, data;
 u32 r;

 address = SOC15_REG_OFFSET(UVD, 0, mmUVD_CTX_INDEX);
 data = SOC15_REG_OFFSET(UVD, 0, mmUVD_CTX_DATA);

 spin_lock_irqsave(&adev->uvd_ctx_idx_lock, flags);
 WREG32(address, ((reg) & 0x1ff));
 r = RREG32(data);
 spin_unlock_irqrestore(&adev->uvd_ctx_idx_lock, flags);
 return r;
}
