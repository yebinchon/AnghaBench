
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_encoder_atom_dig {scalar_t__ dig_encoder; } ;
struct radeon_encoder {struct radeon_encoder_atom_dig* enc_priv; } ;
struct radeon_device {int dummy; } ;
struct radeon_crtc {int encoder; } ;


 int DCCG_AUDIO_DTO0_CNTL ;
 int DCCG_AUDIO_DTO0_MODULE ;
 int DCCG_AUDIO_DTO0_PHASE ;
 int DCCG_AUDIO_DTO1_CNTL ;
 int DCCG_AUDIO_DTO1_MODULE ;
 int DCCG_AUDIO_DTO1_PHASE ;
 int DCCG_AUDIO_DTO_SELECT ;
 int DCCG_AUDIO_DTO_WALLCLOCK_RATIO (int) ;
 int DCCG_AUDIO_DTO_WALLCLOCK_RATIO_MASK ;
 int RREG32 (int ) ;
 int WREG32 (int ,int) ;
 struct radeon_encoder* to_radeon_encoder (int ) ;

void dce3_2_audio_set_dto(struct radeon_device *rdev,
 struct radeon_crtc *crtc, unsigned int clock)
{
 struct radeon_encoder *radeon_encoder;
 struct radeon_encoder_atom_dig *dig;
 unsigned int max_ratio = clock / 24000;
 u32 dto_phase;
 u32 wallclock_ratio;
 u32 dto_cntl;

 if (!crtc)
  return;

 radeon_encoder = to_radeon_encoder(crtc->encoder);
 dig = radeon_encoder->enc_priv;

 if (!dig)
  return;

 if (max_ratio >= 8) {
  dto_phase = 192 * 1000;
  wallclock_ratio = 3;
 } else if (max_ratio >= 4) {
  dto_phase = 96 * 1000;
  wallclock_ratio = 2;
 } else if (max_ratio >= 2) {
  dto_phase = 48 * 1000;
  wallclock_ratio = 1;
 } else {
  dto_phase = 24 * 1000;
  wallclock_ratio = 0;
 }





 if (dig->dig_encoder == 0) {
  dto_cntl = RREG32(DCCG_AUDIO_DTO0_CNTL) & ~DCCG_AUDIO_DTO_WALLCLOCK_RATIO_MASK;
  dto_cntl |= DCCG_AUDIO_DTO_WALLCLOCK_RATIO(wallclock_ratio);
  WREG32(DCCG_AUDIO_DTO0_CNTL, dto_cntl);
  WREG32(DCCG_AUDIO_DTO0_PHASE, dto_phase);
  WREG32(DCCG_AUDIO_DTO0_MODULE, clock);
  WREG32(DCCG_AUDIO_DTO_SELECT, 0);
 } else {
  dto_cntl = RREG32(DCCG_AUDIO_DTO1_CNTL) & ~DCCG_AUDIO_DTO_WALLCLOCK_RATIO_MASK;
  dto_cntl |= DCCG_AUDIO_DTO_WALLCLOCK_RATIO(wallclock_ratio);
  WREG32(DCCG_AUDIO_DTO1_CNTL, dto_cntl);
  WREG32(DCCG_AUDIO_DTO1_PHASE, dto_phase);
  WREG32(DCCG_AUDIO_DTO1_MODULE, clock);
  WREG32(DCCG_AUDIO_DTO_SELECT, 1);
 }
}
