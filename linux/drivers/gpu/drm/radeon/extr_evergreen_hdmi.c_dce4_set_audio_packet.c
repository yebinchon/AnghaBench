
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct radeon_device {int dummy; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {struct radeon_device* dev_private; } ;


 scalar_t__ AFMT_60958_0 ;
 scalar_t__ AFMT_60958_1 ;
 scalar_t__ AFMT_60958_2 ;
 int AFMT_60958_CS_CHANNEL_NUMBER_2 (int) ;
 int AFMT_60958_CS_CHANNEL_NUMBER_3 (int) ;
 int AFMT_60958_CS_CHANNEL_NUMBER_4 (int) ;
 int AFMT_60958_CS_CHANNEL_NUMBER_5 (int) ;
 int AFMT_60958_CS_CHANNEL_NUMBER_6 (int) ;
 int AFMT_60958_CS_CHANNEL_NUMBER_7 (int) ;
 int AFMT_60958_CS_CHANNEL_NUMBER_L (int) ;
 int AFMT_60958_CS_CHANNEL_NUMBER_R (int) ;
 int AFMT_60958_CS_UPDATE ;
 int AFMT_AUDIO_CHANNEL_ENABLE (int) ;
 int AFMT_AUDIO_INFO_UPDATE ;
 scalar_t__ AFMT_AUDIO_PACKET_CONTROL ;
 scalar_t__ AFMT_AUDIO_PACKET_CONTROL2 ;
 scalar_t__ AFMT_INFOFRAME_CONTROL0 ;
 int AFMT_RESET_FIFO_WHEN_AUDIO_DIS ;
 int HDMI_AUDIO_DELAY_EN (int) ;
 int HDMI_AUDIO_PACKETS_PER_LINE (int) ;
 scalar_t__ HDMI_AUDIO_PACKET_CONTROL ;
 int WREG32 (scalar_t__,int) ;
 int WREG32_OR (scalar_t__,int) ;

void dce4_set_audio_packet(struct drm_encoder *encoder, u32 offset)
{
 struct drm_device *dev = encoder->dev;
 struct radeon_device *rdev = dev->dev_private;

 WREG32(AFMT_INFOFRAME_CONTROL0 + offset,
  AFMT_AUDIO_INFO_UPDATE);

 WREG32(AFMT_60958_0 + offset,
  AFMT_60958_CS_CHANNEL_NUMBER_L(1));

 WREG32(AFMT_60958_1 + offset,
  AFMT_60958_CS_CHANNEL_NUMBER_R(2));

 WREG32(AFMT_60958_2 + offset,
  AFMT_60958_CS_CHANNEL_NUMBER_2(3) |
  AFMT_60958_CS_CHANNEL_NUMBER_3(4) |
  AFMT_60958_CS_CHANNEL_NUMBER_4(5) |
  AFMT_60958_CS_CHANNEL_NUMBER_5(6) |
  AFMT_60958_CS_CHANNEL_NUMBER_6(7) |
  AFMT_60958_CS_CHANNEL_NUMBER_7(8));

 WREG32(AFMT_AUDIO_PACKET_CONTROL2 + offset,
  AFMT_AUDIO_CHANNEL_ENABLE(0xff));

 WREG32(HDMI_AUDIO_PACKET_CONTROL + offset,
        HDMI_AUDIO_DELAY_EN(1) |
        HDMI_AUDIO_PACKETS_PER_LINE(3));


 WREG32_OR(AFMT_AUDIO_PACKET_CONTROL + offset,
    AFMT_RESET_FIFO_WHEN_AUDIO_DIS | AFMT_60958_CS_UPDATE);
}
