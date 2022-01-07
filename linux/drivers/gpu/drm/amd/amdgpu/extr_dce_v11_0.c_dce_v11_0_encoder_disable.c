
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_encoder {int dummy; } ;
struct amdgpu_encoder_atom_dig {int dig_encoder; } ;
struct amdgpu_encoder {scalar_t__ active_device; struct amdgpu_encoder_atom_dig* enc_priv; } ;


 scalar_t__ ATOM_ENCODER_MODE_HDMI ;
 int DRM_MODE_DPMS_OFF ;
 int amdgpu_atombios_encoder_dpms (struct drm_encoder*,int ) ;
 scalar_t__ amdgpu_atombios_encoder_get_encoder_mode (struct drm_encoder*) ;
 scalar_t__ amdgpu_atombios_encoder_is_digital (struct drm_encoder*) ;
 int dce_v11_0_afmt_enable (struct drm_encoder*,int) ;
 struct amdgpu_encoder* to_amdgpu_encoder (struct drm_encoder*) ;

__attribute__((used)) static void dce_v11_0_encoder_disable(struct drm_encoder *encoder)
{
 struct amdgpu_encoder *amdgpu_encoder = to_amdgpu_encoder(encoder);
 struct amdgpu_encoder_atom_dig *dig;

 amdgpu_atombios_encoder_dpms(encoder, DRM_MODE_DPMS_OFF);

 if (amdgpu_atombios_encoder_is_digital(encoder)) {
  if (amdgpu_atombios_encoder_get_encoder_mode(encoder) == ATOM_ENCODER_MODE_HDMI)
   dce_v11_0_afmt_enable(encoder, 0);
  dig = amdgpu_encoder->enc_priv;
  dig->dig_encoder = -1;
 }
 amdgpu_encoder->active_device = 0;
}
