
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct radeon_device {int dummy; } ;
struct radeon_crtc {int crtc_id; } ;


 int DCCG_AUDIO_DTO0_CNTL ;
 int DCCG_AUDIO_DTO0_MODULE ;
 int DCCG_AUDIO_DTO0_PHASE ;
 unsigned int DCCG_AUDIO_DTO0_SOURCE_SEL (int ) ;
 unsigned int DCCG_AUDIO_DTO1_USE_512FBR_DTO ;
 int DCCG_AUDIO_DTO_SOURCE ;
 unsigned int DCCG_AUDIO_DTO_WALLCLOCK_RATIO (unsigned int) ;
 unsigned int DCCG_AUDIO_DTO_WALLCLOCK_RATIO_MASK ;
 unsigned int RREG32 (int ) ;
 int WREG32 (int ,unsigned int) ;

void dce4_hdmi_audio_set_dto(struct radeon_device *rdev,
 struct radeon_crtc *crtc, unsigned int clock)
{
 unsigned int max_ratio = clock / 24000;
 u32 dto_phase;
 u32 wallclock_ratio;
 u32 value;

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

 value = RREG32(DCCG_AUDIO_DTO0_CNTL) & ~DCCG_AUDIO_DTO_WALLCLOCK_RATIO_MASK;
 value |= DCCG_AUDIO_DTO_WALLCLOCK_RATIO(wallclock_ratio);
 value &= ~DCCG_AUDIO_DTO1_USE_512FBR_DTO;
 WREG32(DCCG_AUDIO_DTO0_CNTL, value);


 value = 0;

 if (crtc)
  value |= DCCG_AUDIO_DTO0_SOURCE_SEL(crtc->crtc_id);

 WREG32(DCCG_AUDIO_DTO_SOURCE, value);





 WREG32(DCCG_AUDIO_DTO0_PHASE, dto_phase);
 WREG32(DCCG_AUDIO_DTO0_MODULE, clock);
}
