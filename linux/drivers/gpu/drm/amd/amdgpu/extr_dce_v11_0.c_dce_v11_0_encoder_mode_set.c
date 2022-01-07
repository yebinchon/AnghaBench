
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_encoder {int crtc; } ;
struct drm_display_mode {int clock; } ;
struct amdgpu_encoder {int pixel_clock; } ;


 scalar_t__ ATOM_ENCODER_MODE_HDMI ;
 int DRM_MODE_DPMS_OFF ;
 int amdgpu_atombios_encoder_dpms (struct drm_encoder*,int ) ;
 scalar_t__ amdgpu_atombios_encoder_get_encoder_mode (struct drm_encoder*) ;
 int dce_v11_0_afmt_enable (struct drm_encoder*,int) ;
 int dce_v11_0_afmt_setmode (struct drm_encoder*,struct drm_display_mode*) ;
 int dce_v11_0_set_interleave (int ,struct drm_display_mode*) ;
 struct amdgpu_encoder* to_amdgpu_encoder (struct drm_encoder*) ;

__attribute__((used)) static void
dce_v11_0_encoder_mode_set(struct drm_encoder *encoder,
     struct drm_display_mode *mode,
     struct drm_display_mode *adjusted_mode)
{
 struct amdgpu_encoder *amdgpu_encoder = to_amdgpu_encoder(encoder);

 amdgpu_encoder->pixel_clock = adjusted_mode->clock;


 amdgpu_atombios_encoder_dpms(encoder, DRM_MODE_DPMS_OFF);


 dce_v11_0_set_interleave(encoder->crtc, mode);

 if (amdgpu_atombios_encoder_get_encoder_mode(encoder) == ATOM_ENCODER_MODE_HDMI) {
  dce_v11_0_afmt_enable(encoder, 1);
  dce_v11_0_afmt_setmode(encoder, adjusted_mode);
 }
}
