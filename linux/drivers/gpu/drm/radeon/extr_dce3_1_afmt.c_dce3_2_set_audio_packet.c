
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct radeon_device {int dummy; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {struct radeon_device* dev_private; } ;


 int AFMT_60958_CS_UPDATE ;
 scalar_t__ AFMT_AUDIO_PACKET_CONTROL ;
 int AFMT_AUDIO_SAMPLE_SEND ;
 int HDMI0_AUDIO_DELAY_EN (int) ;
 int HDMI0_AUDIO_INFO_CONT ;
 int HDMI0_AUDIO_INFO_LINE (int) ;
 int HDMI0_AUDIO_INFO_SEND ;
 int HDMI0_AUDIO_PACKETS_PER_LINE (int) ;
 scalar_t__ HDMI0_AUDIO_PACKET_CONTROL ;
 scalar_t__ HDMI0_INFOFRAME_CONTROL0 ;
 scalar_t__ HDMI0_INFOFRAME_CONTROL1 ;
 int WREG32 (scalar_t__,int) ;
 int WREG32_OR (scalar_t__,int) ;

void dce3_2_set_audio_packet(struct drm_encoder *encoder, u32 offset)
{
 struct drm_device *dev = encoder->dev;
 struct radeon_device *rdev = dev->dev_private;

 WREG32(HDMI0_AUDIO_PACKET_CONTROL + offset,
  HDMI0_AUDIO_DELAY_EN(1) |
  HDMI0_AUDIO_PACKETS_PER_LINE(3));

 WREG32(AFMT_AUDIO_PACKET_CONTROL + offset,
  AFMT_AUDIO_SAMPLE_SEND |
  AFMT_60958_CS_UPDATE);

 WREG32_OR(HDMI0_INFOFRAME_CONTROL0 + offset,
  HDMI0_AUDIO_INFO_SEND |
  HDMI0_AUDIO_INFO_CONT);

 WREG32_OR(HDMI0_INFOFRAME_CONTROL1 + offset,
  HDMI0_AUDIO_INFO_LINE(2));
}
