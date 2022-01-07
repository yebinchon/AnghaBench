
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct radeon_device {int dummy; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {struct radeon_device* dev_private; } ;


 int HDMI0_GC_CONT ;
 int HDMI0_GC_SEND ;
 int HDMI0_NULL_SEND ;
 scalar_t__ HDMI0_VBI_PACKET_CONTROL ;
 int WREG32_OR (scalar_t__,int) ;

void r600_set_vbi_packet(struct drm_encoder *encoder, u32 offset)
{
 struct drm_device *dev = encoder->dev;
 struct radeon_device *rdev = dev->dev_private;

 WREG32_OR(HDMI0_VBI_PACKET_CONTROL + offset,
  HDMI0_NULL_SEND |
  HDMI0_GC_SEND |
  HDMI0_GC_CONT);
}
