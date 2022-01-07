
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct radeon_device {int dummy; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {struct radeon_device* dev_private; } ;


 scalar_t__ HDMI0_GC ;
 int HDMI0_GC_AVMUTE ;
 int WREG32_AND (scalar_t__,int ) ;
 int WREG32_OR (scalar_t__,int ) ;

void dce3_2_set_mute(struct drm_encoder *encoder, u32 offset, bool mute)
{
 struct drm_device *dev = encoder->dev;
 struct radeon_device *rdev = dev->dev_private;

 if (mute)
  WREG32_OR(HDMI0_GC + offset, HDMI0_GC_AVMUTE);
 else
  WREG32_AND(HDMI0_GC + offset, ~HDMI0_GC_AVMUTE);
}
