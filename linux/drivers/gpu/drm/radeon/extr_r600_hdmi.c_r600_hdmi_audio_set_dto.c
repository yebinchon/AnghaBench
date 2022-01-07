
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_encoder_atom_dig {scalar_t__ dig_encoder; } ;
struct radeon_encoder {struct radeon_encoder_atom_dig* enc_priv; } ;
struct radeon_device {int dummy; } ;
struct radeon_crtc {int encoder; } ;


 int DCCG_AUDIO_DTO0_MODULE ;
 int DCCG_AUDIO_DTO0_PHASE ;
 int DCCG_AUDIO_DTO1_MODULE ;
 int DCCG_AUDIO_DTO1_PHASE ;
 int DCCG_AUDIO_DTO_SELECT ;
 int WREG32 (int ,int) ;
 struct radeon_encoder* to_radeon_encoder (int ) ;

void r600_hdmi_audio_set_dto(struct radeon_device *rdev,
        struct radeon_crtc *crtc, unsigned int clock)
{
 struct radeon_encoder *radeon_encoder;
 struct radeon_encoder_atom_dig *dig;

 if (!crtc)
  return;

 radeon_encoder = to_radeon_encoder(crtc->encoder);
 dig = radeon_encoder->enc_priv;

 if (!dig)
  return;

 if (dig->dig_encoder == 0) {
  WREG32(DCCG_AUDIO_DTO0_PHASE, 24000 * 100);
  WREG32(DCCG_AUDIO_DTO0_MODULE, clock * 100);
  WREG32(DCCG_AUDIO_DTO_SELECT, 0);
 } else {
  WREG32(DCCG_AUDIO_DTO1_PHASE, 24000 * 100);
  WREG32(DCCG_AUDIO_DTO1_MODULE, clock * 100);
  WREG32(DCCG_AUDIO_DTO_SELECT, 1);
 }
}
