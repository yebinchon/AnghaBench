
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct amdgpu_encoder_atom_dig {TYPE_1__* afmt; } ;
struct amdgpu_encoder {struct amdgpu_encoder_atom_dig* enc_priv; } ;
struct amdgpu_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ offset; } ;


 int AFMT_60958_0 ;
 int AFMT_60958_1 ;
 int AFMT_60958_2 ;
 int AFMT_60958_CS_CHANNEL_NUMBER_2 ;
 int AFMT_60958_CS_CHANNEL_NUMBER_3 ;
 int AFMT_60958_CS_CHANNEL_NUMBER_4 ;
 int AFMT_60958_CS_CHANNEL_NUMBER_5 ;
 int AFMT_60958_CS_CHANNEL_NUMBER_6 ;
 int AFMT_60958_CS_CHANNEL_NUMBER_7 ;
 int AFMT_60958_CS_CHANNEL_NUMBER_L ;
 int AFMT_60958_CS_CHANNEL_NUMBER_R ;
 int AFMT_60958_CS_UPDATE ;
 int AFMT_AUDIO_CHANNEL_ENABLE ;
 int AFMT_AUDIO_INFO_UPDATE ;
 int AFMT_AUDIO_PACKET_CONTROL ;
 int AFMT_AUDIO_PACKET_CONTROL2 ;
 int AFMT_INFOFRAME_CONTROL0 ;
 int AFMT_RESET_FIFO_WHEN_AUDIO_DIS ;
 int HDMI_AUDIO_DELAY_EN ;
 int HDMI_AUDIO_PACKETS_PER_LINE ;
 int HDMI_AUDIO_PACKET_CONTROL ;
 int REG_SET_FIELD (int ,int ,int ,int) ;
 int RREG32 (scalar_t__) ;
 int WREG32 (scalar_t__,int ) ;
 scalar_t__ mmAFMT_60958_0 ;
 scalar_t__ mmAFMT_60958_1 ;
 scalar_t__ mmAFMT_60958_2 ;
 scalar_t__ mmAFMT_AUDIO_PACKET_CONTROL ;
 scalar_t__ mmAFMT_AUDIO_PACKET_CONTROL2 ;
 scalar_t__ mmAFMT_INFOFRAME_CONTROL0 ;
 scalar_t__ mmHDMI_AUDIO_PACKET_CONTROL ;
 struct amdgpu_encoder* to_amdgpu_encoder (struct drm_encoder*) ;

__attribute__((used)) static void dce_v6_0_audio_set_packet(struct drm_encoder *encoder)
{
 struct drm_device *dev = encoder->dev;
 struct amdgpu_device *adev = dev->dev_private;
 struct amdgpu_encoder *amdgpu_encoder = to_amdgpu_encoder(encoder);
 struct amdgpu_encoder_atom_dig *dig = amdgpu_encoder->enc_priv;
 u32 tmp;

 tmp = RREG32(mmAFMT_INFOFRAME_CONTROL0 + dig->afmt->offset);
 tmp = REG_SET_FIELD(tmp, AFMT_INFOFRAME_CONTROL0, AFMT_AUDIO_INFO_UPDATE, 1);
 WREG32(mmAFMT_INFOFRAME_CONTROL0 + dig->afmt->offset, tmp);

 tmp = RREG32(mmAFMT_60958_0 + dig->afmt->offset);
 tmp = REG_SET_FIELD(tmp, AFMT_60958_0, AFMT_60958_CS_CHANNEL_NUMBER_L, 1);
 WREG32(mmAFMT_60958_0 + dig->afmt->offset, tmp);

 tmp = RREG32(mmAFMT_60958_1 + dig->afmt->offset);
 tmp = REG_SET_FIELD(tmp, AFMT_60958_1, AFMT_60958_CS_CHANNEL_NUMBER_R, 2);
 WREG32(mmAFMT_60958_1 + dig->afmt->offset, tmp);

 tmp = RREG32(mmAFMT_60958_2 + dig->afmt->offset);
 tmp = REG_SET_FIELD(tmp, AFMT_60958_2, AFMT_60958_CS_CHANNEL_NUMBER_2, 3);
 tmp = REG_SET_FIELD(tmp, AFMT_60958_2, AFMT_60958_CS_CHANNEL_NUMBER_3, 4);
 tmp = REG_SET_FIELD(tmp, AFMT_60958_2, AFMT_60958_CS_CHANNEL_NUMBER_4, 5);
 tmp = REG_SET_FIELD(tmp, AFMT_60958_2, AFMT_60958_CS_CHANNEL_NUMBER_5, 6);
 tmp = REG_SET_FIELD(tmp, AFMT_60958_2, AFMT_60958_CS_CHANNEL_NUMBER_6, 7);
 tmp = REG_SET_FIELD(tmp, AFMT_60958_2, AFMT_60958_CS_CHANNEL_NUMBER_7, 8);
 WREG32(mmAFMT_60958_2 + dig->afmt->offset, tmp);

 tmp = RREG32(mmAFMT_AUDIO_PACKET_CONTROL2 + dig->afmt->offset);
 tmp = REG_SET_FIELD(tmp, AFMT_AUDIO_PACKET_CONTROL2, AFMT_AUDIO_CHANNEL_ENABLE, 0xff);
 WREG32(mmAFMT_AUDIO_PACKET_CONTROL2 + dig->afmt->offset, tmp);

 tmp = RREG32(mmHDMI_AUDIO_PACKET_CONTROL + dig->afmt->offset);
 tmp = REG_SET_FIELD(tmp, HDMI_AUDIO_PACKET_CONTROL, HDMI_AUDIO_DELAY_EN, 1);
 tmp = REG_SET_FIELD(tmp, HDMI_AUDIO_PACKET_CONTROL, HDMI_AUDIO_PACKETS_PER_LINE, 3);
 WREG32(mmHDMI_AUDIO_PACKET_CONTROL + dig->afmt->offset, tmp);

 tmp = RREG32(mmAFMT_AUDIO_PACKET_CONTROL + dig->afmt->offset);
 tmp = REG_SET_FIELD(tmp, AFMT_AUDIO_PACKET_CONTROL, AFMT_RESET_FIFO_WHEN_AUDIO_DIS, 1);
 tmp = REG_SET_FIELD(tmp, AFMT_AUDIO_PACKET_CONTROL, AFMT_60958_CS_UPDATE, 1);
 WREG32(mmAFMT_AUDIO_PACKET_CONTROL + dig->afmt->offset, tmp);
}
