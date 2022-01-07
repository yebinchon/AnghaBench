
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_encoder {int crtc; struct drm_device* dev; } ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct amdgpu_encoder_atom_dig {int afmt; } ;
struct amdgpu_encoder {struct amdgpu_encoder_atom_dig* enc_priv; } ;
struct amdgpu_device {int dummy; } ;
struct amdgpu_crtc {int crtc_id; } ;


 int DCCG_AUDIO_DTO0_SOURCE_SEL ;
 int DCCG_AUDIO_DTO_SOURCE ;
 int REG_SET_FIELD (int,int ,int ,int ) ;
 int RREG32 (int ) ;
 int WREG32 (int ,int) ;
 int mmDCCG_AUDIO_DTO0_MODULE ;
 int mmDCCG_AUDIO_DTO0_PHASE ;
 int mmDCCG_AUDIO_DTO_SOURCE ;
 struct amdgpu_crtc* to_amdgpu_crtc (int ) ;
 struct amdgpu_encoder* to_amdgpu_encoder (struct drm_encoder*) ;

__attribute__((used)) static void dce_v10_0_audio_set_dto(struct drm_encoder *encoder, u32 clock)
{
 struct drm_device *dev = encoder->dev;
 struct amdgpu_device *adev = dev->dev_private;
 struct amdgpu_encoder *amdgpu_encoder = to_amdgpu_encoder(encoder);
 struct amdgpu_encoder_atom_dig *dig = amdgpu_encoder->enc_priv;
 struct amdgpu_crtc *amdgpu_crtc = to_amdgpu_crtc(encoder->crtc);
 u32 dto_phase = 24 * 1000;
 u32 dto_modulo = clock;
 u32 tmp;

 if (!dig || !dig->afmt)
  return;






 tmp = RREG32(mmDCCG_AUDIO_DTO_SOURCE);
 tmp = REG_SET_FIELD(tmp, DCCG_AUDIO_DTO_SOURCE, DCCG_AUDIO_DTO0_SOURCE_SEL,
       amdgpu_crtc->crtc_id);
 WREG32(mmDCCG_AUDIO_DTO_SOURCE, tmp);
 WREG32(mmDCCG_AUDIO_DTO0_PHASE, dto_phase);
 WREG32(mmDCCG_AUDIO_DTO0_MODULE, dto_modulo);
}
