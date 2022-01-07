
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct radeon_device {int dummy; } ;
struct radeon_crtc {int crtc_id; } ;


 scalar_t__ ASIC_IS_DCE8 (struct radeon_device*) ;
 unsigned int DCCG_AUDIO_DTO0_SOURCE_SEL (int ) ;
 int DCCG_AUDIO_DTO1_MODULE ;
 int DCCG_AUDIO_DTO1_PHASE ;
 unsigned int DCCG_AUDIO_DTO_SEL ;
 int DCCG_AUDIO_DTO_SOURCE ;
 int DCE8_DCCG_AUDIO_DTO1_MODULE ;
 int DCE8_DCCG_AUDIO_DTO1_PHASE ;
 int DENTIST_DISPCLK_CNTL ;
 unsigned int DENTIST_DPREFCLK_WDIVIDER_MASK ;
 unsigned int DENTIST_DPREFCLK_WDIVIDER_SHIFT ;
 unsigned int RREG32 (int ) ;
 int WREG32 (int ,unsigned int) ;
 unsigned int radeon_audio_decode_dfs_div (unsigned int) ;

void dce6_dp_audio_set_dto(struct radeon_device *rdev,
      struct radeon_crtc *crtc, unsigned int clock)
{

 u32 value = 0;
 value |= DCCG_AUDIO_DTO_SEL;

 if (crtc)
  value |= DCCG_AUDIO_DTO0_SOURCE_SEL(crtc->crtc_id);

 WREG32(DCCG_AUDIO_DTO_SOURCE, value);





 if (ASIC_IS_DCE8(rdev)) {
  unsigned int div = (RREG32(DENTIST_DISPCLK_CNTL) &
   DENTIST_DPREFCLK_WDIVIDER_MASK) >>
   DENTIST_DPREFCLK_WDIVIDER_SHIFT;
  div = radeon_audio_decode_dfs_div(div);

  if (div)
   clock = clock * 100 / div;

  WREG32(DCE8_DCCG_AUDIO_DTO1_PHASE, 24000);
  WREG32(DCE8_DCCG_AUDIO_DTO1_MODULE, clock);
 } else {
  WREG32(DCCG_AUDIO_DTO1_PHASE, 24000);
  WREG32(DCCG_AUDIO_DTO1_MODULE, clock);
 }
}
