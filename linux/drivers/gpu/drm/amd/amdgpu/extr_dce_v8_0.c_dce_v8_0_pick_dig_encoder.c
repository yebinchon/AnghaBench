
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_encoder {int dummy; } ;
struct amdgpu_encoder_atom_dig {int linkb; } ;
struct amdgpu_encoder {int encoder_id; struct amdgpu_encoder_atom_dig* enc_priv; } ;


 int DRM_ERROR (char*,int) ;




 struct amdgpu_encoder* to_amdgpu_encoder (struct drm_encoder*) ;

__attribute__((used)) static int dce_v8_0_pick_dig_encoder(struct drm_encoder *encoder)
{
 struct amdgpu_encoder *amdgpu_encoder = to_amdgpu_encoder(encoder);
 struct amdgpu_encoder_atom_dig *dig = amdgpu_encoder->enc_priv;

 switch (amdgpu_encoder->encoder_id) {
 case 131:
  if (dig->linkb)
   return 1;
  else
   return 0;
  break;
 case 130:
  if (dig->linkb)
   return 3;
  else
   return 2;
  break;
 case 129:
  if (dig->linkb)
   return 5;
  else
   return 4;
  break;
 case 128:
  return 6;
  break;
 default:
  DRM_ERROR("invalid encoder_id: 0x%x\n", amdgpu_encoder->encoder_id);
  return 0;
 }
}
