
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int uvd_ctx_idx_lock; } ;
typedef int reg ;


 int RREG32 (int ) ;
 int WREG32 (int ,int ) ;
 int mmUVD_CTX_DATA ;
 int mmUVD_CTX_INDEX ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static u32 cik_uvd_ctx_rreg(struct amdgpu_device *adev, u32 reg)
{
 unsigned long flags;
 u32 r;

 spin_lock_irqsave(&adev->uvd_ctx_idx_lock, flags);
 WREG32(mmUVD_CTX_INDEX, ((reg) & 0x1ff));
 r = RREG32(mmUVD_CTX_DATA);
 spin_unlock_irqrestore(&adev->uvd_ctx_idx_lock, flags);
 return r;
}
