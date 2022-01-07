
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct radeon_device {int dummy; } ;
struct radeon_crtc {int crtc_id; } ;


 int DCCG_AUDIO_DTO0_MODULE ;
 int DCCG_AUDIO_DTO0_PHASE ;
 unsigned int DCCG_AUDIO_DTO0_SOURCE_SEL (int ) ;
 int DCCG_AUDIO_DTO_SOURCE ;
 int WREG32 (int ,unsigned int) ;

void dce6_hdmi_audio_set_dto(struct radeon_device *rdev,
        struct radeon_crtc *crtc, unsigned int clock)
{

 u32 value = 0;

 if (crtc)
  value |= DCCG_AUDIO_DTO0_SOURCE_SEL(crtc->crtc_id);

 WREG32(DCCG_AUDIO_DTO_SOURCE, value);





 WREG32(DCCG_AUDIO_DTO0_PHASE, 24000);
 WREG32(DCCG_AUDIO_DTO0_MODULE, clock);
}
