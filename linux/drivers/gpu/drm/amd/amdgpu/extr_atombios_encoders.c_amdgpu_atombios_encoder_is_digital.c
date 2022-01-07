
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_encoder {int dummy; } ;
struct amdgpu_encoder {int encoder_id; } ;







 struct amdgpu_encoder* to_amdgpu_encoder (struct drm_encoder*) ;

bool amdgpu_atombios_encoder_is_digital(struct drm_encoder *encoder)
{
 struct amdgpu_encoder *amdgpu_encoder = to_amdgpu_encoder(encoder);
 switch (amdgpu_encoder->encoder_id) {
 case 132:
 case 131:
 case 130:
 case 129:
 case 128:
  return 1;
 default:
  return 0;
 }
}
