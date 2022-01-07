
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct radeon_device {int end_idx_lock; } ;


 scalar_t__ AZ_F0_CODEC_ENDPOINT_DATA ;
 scalar_t__ AZ_F0_CODEC_ENDPOINT_INDEX ;
 scalar_t__ RREG32 (scalar_t__) ;
 int WREG32 (scalar_t__,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

u32 dce6_endpoint_rreg(struct radeon_device *rdev,
         u32 block_offset, u32 reg)
{
 unsigned long flags;
 u32 r;

 spin_lock_irqsave(&rdev->end_idx_lock, flags);
 WREG32(AZ_F0_CODEC_ENDPOINT_INDEX + block_offset, reg);
 r = RREG32(AZ_F0_CODEC_ENDPOINT_DATA + block_offset);
 spin_unlock_irqrestore(&rdev->end_idx_lock, flags);

 return r;
}
