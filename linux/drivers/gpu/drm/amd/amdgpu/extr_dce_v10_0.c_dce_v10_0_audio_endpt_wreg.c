
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct amdgpu_device {int audio_endpt_idx_lock; } ;


 int WREG32 (scalar_t__,scalar_t__) ;
 scalar_t__ mmAZALIA_F0_CODEC_ENDPOINT_DATA ;
 scalar_t__ mmAZALIA_F0_CODEC_ENDPOINT_INDEX ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void dce_v10_0_audio_endpt_wreg(struct amdgpu_device *adev,
          u32 block_offset, u32 reg, u32 v)
{
 unsigned long flags;

 spin_lock_irqsave(&adev->audio_endpt_idx_lock, flags);
 WREG32(mmAZALIA_F0_CODEC_ENDPOINT_INDEX + block_offset, reg);
 WREG32(mmAZALIA_F0_CODEC_ENDPOINT_DATA + block_offset, v);
 spin_unlock_irqrestore(&adev->audio_endpt_idx_lock, flags);
}
