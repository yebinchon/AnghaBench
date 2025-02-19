
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct radeon_encoder_atom_dig {TYPE_2__* pin; int afmt; } ;
struct radeon_encoder {struct radeon_encoder_atom_dig* enc_priv; } ;
struct radeon_device {int dummy; } ;
struct drm_encoder {TYPE_1__* dev; } ;
struct drm_display_mode {int flags; } ;
struct drm_connector {int * audio_latency; int * video_latency; scalar_t__* latency_present; } ;
struct TYPE_4__ {int offset; } ;
struct TYPE_3__ {struct radeon_device* dev_private; } ;


 int AUDIO_LIPSYNC (int ) ;
 int AZ_F0_CODEC_PIN_CONTROL_RESPONSE_LIPSYNC ;
 int DRM_MODE_FLAG_INTERLACE ;
 int VIDEO_LIPSYNC (int ) ;
 int WREG32_ENDPOINT (int ,int ,int) ;
 struct radeon_encoder* to_radeon_encoder (struct drm_encoder*) ;

void dce6_afmt_write_latency_fields(struct drm_encoder *encoder,
        struct drm_connector *connector,
        struct drm_display_mode *mode)
{
 struct radeon_device *rdev = encoder->dev->dev_private;
 struct radeon_encoder *radeon_encoder = to_radeon_encoder(encoder);
 struct radeon_encoder_atom_dig *dig = radeon_encoder->enc_priv;
 u32 tmp = 0;

 if (!dig || !dig->afmt || !dig->pin)
  return;

 if (mode->flags & DRM_MODE_FLAG_INTERLACE) {
  if (connector->latency_present[1])
   tmp = VIDEO_LIPSYNC(connector->video_latency[1]) |
    AUDIO_LIPSYNC(connector->audio_latency[1]);
  else
   tmp = VIDEO_LIPSYNC(0) | AUDIO_LIPSYNC(0);
 } else {
  if (connector->latency_present[0])
   tmp = VIDEO_LIPSYNC(connector->video_latency[0]) |
    AUDIO_LIPSYNC(connector->audio_latency[0]);
  else
   tmp = VIDEO_LIPSYNC(0) | AUDIO_LIPSYNC(0);
 }
 WREG32_ENDPOINT(dig->pin->offset,
   AZ_F0_CODEC_PIN_CONTROL_RESPONSE_LIPSYNC, tmp);
}
