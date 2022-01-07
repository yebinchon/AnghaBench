
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_encoder {int dummy; } ;
struct amdgpu_encoder {int encoder_id; int active_device; int devices; } ;


 int ATOM_DISABLE ;
 int ATOM_ENABLE ;
 int DRM_DEBUG_KMS (char*,int,int,int ,int ) ;
 int amdgpu_atombios_encoder_setup_dac (struct drm_encoder*,int ) ;
 int amdgpu_atombios_encoder_setup_dig (struct drm_encoder*,int ) ;
 int amdgpu_atombios_encoder_setup_dvo (struct drm_encoder*,int ) ;
 struct amdgpu_encoder* to_amdgpu_encoder (struct drm_encoder*) ;

void
amdgpu_atombios_encoder_dpms(struct drm_encoder *encoder, int mode)
{
 struct amdgpu_encoder *amdgpu_encoder = to_amdgpu_encoder(encoder);

 DRM_DEBUG_KMS("encoder dpms %d to mode %d, devices %08x, active_devices %08x\n",
    amdgpu_encoder->encoder_id, mode, amdgpu_encoder->devices,
    amdgpu_encoder->active_device);
 switch (amdgpu_encoder->encoder_id) {
 case 131:
 case 130:
 case 129:
 case 128:
  switch (mode) {
  case 136:
   amdgpu_atombios_encoder_setup_dig(encoder, ATOM_ENABLE);
   break;
  case 135:
  case 134:
  case 137:
   amdgpu_atombios_encoder_setup_dig(encoder, ATOM_DISABLE);
   break;
  }
  break;
 case 132:
  switch (mode) {
  case 136:
   amdgpu_atombios_encoder_setup_dvo(encoder, ATOM_ENABLE);
   break;
  case 135:
  case 134:
  case 137:
   amdgpu_atombios_encoder_setup_dvo(encoder, ATOM_DISABLE);
   break;
  }
  break;
 case 133:
  switch (mode) {
  case 136:
   amdgpu_atombios_encoder_setup_dac(encoder, ATOM_ENABLE);
   break;
  case 135:
  case 134:
  case 137:
   amdgpu_atombios_encoder_setup_dac(encoder, ATOM_DISABLE);
   break;
  }
  break;
 default:
  return;
 }
}
