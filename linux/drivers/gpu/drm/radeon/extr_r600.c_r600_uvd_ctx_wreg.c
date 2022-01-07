
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int uvd_idx_lock; } ;
typedef int reg ;


 int R600_UVD_CTX_DATA ;
 int R600_UVD_CTX_INDEX ;
 int WREG32 (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void r600_uvd_ctx_wreg(struct radeon_device *rdev, u32 reg, u32 v)
{
 unsigned long flags;

 spin_lock_irqsave(&rdev->uvd_idx_lock, flags);
 WREG32(R600_UVD_CTX_INDEX, ((reg) & 0x1ff));
 WREG32(R600_UVD_CTX_DATA, (v));
 spin_unlock_irqrestore(&rdev->uvd_idx_lock, flags);
}
