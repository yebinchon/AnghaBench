
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_encoder {int crtc; struct drm_device* dev; } ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct amdgpu_device {int dummy; } ;
struct amdgpu_crtc {int crtc_id; } ;


 int ATOM_ENCODER_MODE_HDMI ;
 int DCCG_AUDIO_DTO0_SOURCE_SEL ;
 int DCCG_AUDIO_DTO_SEL ;
 int DCCG_AUDIO_DTO_SOURCE ;
 scalar_t__ ENCODER_MODE_IS_DP (int) ;
 int REG_SET_FIELD (int,int ,int ,int) ;
 int RREG32 (int ) ;
 int WREG32 (int ,int) ;
 int amdgpu_atombios_encoder_get_encoder_mode (struct drm_encoder*) ;
 int mmDCCG_AUDIO_DTO0_MODULE ;
 int mmDCCG_AUDIO_DTO0_PHASE ;
 int mmDCCG_AUDIO_DTO1_MODULE ;
 int mmDCCG_AUDIO_DTO1_PHASE ;
 int mmDCCG_AUDIO_DTO_SOURCE ;
 struct amdgpu_crtc* to_amdgpu_crtc (int ) ;

__attribute__((used)) static void dce_v6_0_audio_set_dto(struct drm_encoder *encoder, u32 clock)
{
 struct drm_device *dev = encoder->dev;
 struct amdgpu_device *adev = dev->dev_private;
 struct amdgpu_crtc *amdgpu_crtc = to_amdgpu_crtc(encoder->crtc);
 int em = amdgpu_atombios_encoder_get_encoder_mode(encoder);
 u32 tmp;







 tmp = RREG32(mmDCCG_AUDIO_DTO_SOURCE);
 tmp = REG_SET_FIELD(tmp, DCCG_AUDIO_DTO_SOURCE,
   DCCG_AUDIO_DTO0_SOURCE_SEL, amdgpu_crtc->crtc_id);
 if (em == ATOM_ENCODER_MODE_HDMI) {
  tmp = REG_SET_FIELD(tmp, DCCG_AUDIO_DTO_SOURCE,
    DCCG_AUDIO_DTO_SEL, 0);
 } else if (ENCODER_MODE_IS_DP(em)) {
  tmp = REG_SET_FIELD(tmp, DCCG_AUDIO_DTO_SOURCE,
    DCCG_AUDIO_DTO_SEL, 1);
 }
 WREG32(mmDCCG_AUDIO_DTO_SOURCE, tmp);
 if (em == ATOM_ENCODER_MODE_HDMI) {
  WREG32(mmDCCG_AUDIO_DTO0_PHASE, 24000);
  WREG32(mmDCCG_AUDIO_DTO0_MODULE, clock);
 } else if (ENCODER_MODE_IS_DP(em)) {
  WREG32(mmDCCG_AUDIO_DTO1_PHASE, 24000);
  WREG32(mmDCCG_AUDIO_DTO1_MODULE, clock);
 }
}
