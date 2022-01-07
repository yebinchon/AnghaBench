
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int uvd_ctx_idx_lock; } ;
typedef int reg ;


 unsigned long SOC15_REG_OFFSET (int ,int ,int ) ;
 int UVD ;
 int WREG32 (unsigned long,int ) ;
 int mmUVD_CTX_DATA ;
 int mmUVD_CTX_INDEX ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void soc15_uvd_ctx_wreg(struct amdgpu_device *adev, u32 reg, u32 v)
{
 unsigned long flags, address, data;

 address = SOC15_REG_OFFSET(UVD, 0, mmUVD_CTX_INDEX);
 data = SOC15_REG_OFFSET(UVD, 0, mmUVD_CTX_DATA);

 spin_lock_irqsave(&adev->uvd_ctx_idx_lock, flags);
 WREG32(address, ((reg) & 0x1ff));
 WREG32(data, (v));
 spin_unlock_irqrestore(&adev->uvd_ctx_idx_lock, flags);
}
