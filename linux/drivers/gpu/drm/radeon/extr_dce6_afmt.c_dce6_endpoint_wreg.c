
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int end_idx_lock; } ;


 scalar_t__ ASIC_IS_DCE8 (struct radeon_device*) ;
 int AZ_ENDPOINT_REG_INDEX (int) ;
 int AZ_ENDPOINT_REG_WRITE_EN ;
 int AZ_F0_CODEC_ENDPOINT_DATA ;
 int AZ_F0_CODEC_ENDPOINT_INDEX ;
 int WREG32 (int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void dce6_endpoint_wreg(struct radeon_device *rdev,
          u32 block_offset, u32 reg, u32 v)
{
 unsigned long flags;

 spin_lock_irqsave(&rdev->end_idx_lock, flags);
 if (ASIC_IS_DCE8(rdev))
  WREG32(AZ_F0_CODEC_ENDPOINT_INDEX + block_offset, reg);
 else
  WREG32(AZ_F0_CODEC_ENDPOINT_INDEX + block_offset,
         AZ_ENDPOINT_REG_WRITE_EN | AZ_ENDPOINT_REG_INDEX(reg));
 WREG32(AZ_F0_CODEC_ENDPOINT_DATA + block_offset, v);
 spin_unlock_irqrestore(&rdev->end_idx_lock, flags);
}
