
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct radeon_encoder {int encoder_id; } ;
struct drm_encoder {int dummy; } ;


 int ENCODER_OBJECT_ID_NONE ;


 struct drm_encoder* radeon_get_external_encoder (struct drm_encoder*) ;
 struct radeon_encoder* to_radeon_encoder (struct drm_encoder*) ;

u16 radeon_encoder_get_dp_bridge_encoder_id(struct drm_encoder *encoder)
{
 struct drm_encoder *other_encoder = radeon_get_external_encoder(encoder);

 if (other_encoder) {
  struct radeon_encoder *radeon_encoder = to_radeon_encoder(other_encoder);

  switch (radeon_encoder->encoder_id) {
  case 128:
  case 129:
   return radeon_encoder->encoder_id;
  default:
   return ENCODER_OBJECT_ID_NONE;
  }
 }
 return ENCODER_OBJECT_ID_NONE;
}
