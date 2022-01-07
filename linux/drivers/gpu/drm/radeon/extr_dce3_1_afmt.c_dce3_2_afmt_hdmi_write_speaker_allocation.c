
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct radeon_device {int dummy; } ;
struct drm_encoder {TYPE_1__* dev; } ;
struct TYPE_2__ {struct radeon_device* dev_private; } ;


 int AZ_F0_CODEC_PIN0_CONTROL_CHANNEL_SPEAKER ;
 int DP_CONNECTION ;
 int HDMI_CONNECTION ;
 int RREG32_ENDPOINT (int ,int ) ;
 int SPEAKER_ALLOCATION (int) ;
 int SPEAKER_ALLOCATION_MASK ;
 int WREG32_ENDPOINT (int ,int ,int) ;

void dce3_2_afmt_hdmi_write_speaker_allocation(struct drm_encoder *encoder,
 u8 *sadb, int sad_count)
{
 struct radeon_device *rdev = encoder->dev->dev_private;
 u32 tmp;


 tmp = RREG32_ENDPOINT(0, AZ_F0_CODEC_PIN0_CONTROL_CHANNEL_SPEAKER);
 tmp &= ~(DP_CONNECTION | SPEAKER_ALLOCATION_MASK);

 tmp |= HDMI_CONNECTION;
 if (sad_count)
  tmp |= SPEAKER_ALLOCATION(sadb[0]);
 else
  tmp |= SPEAKER_ALLOCATION(5);
 WREG32_ENDPOINT(0, AZ_F0_CODEC_PIN0_CONTROL_CHANNEL_SPEAKER, tmp);
}
