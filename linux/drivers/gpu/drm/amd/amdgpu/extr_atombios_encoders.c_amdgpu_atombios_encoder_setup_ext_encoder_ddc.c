
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_encoder {int dummy; } ;


 int EXTERNAL_ENCODER_ACTION_V3_DDC_SETUP ;
 int amdgpu_atombios_encoder_setup_external_encoder (struct drm_encoder*,struct drm_encoder*,int ) ;
 struct drm_encoder* amdgpu_get_external_encoder (struct drm_encoder*) ;

void
amdgpu_atombios_encoder_setup_ext_encoder_ddc(struct drm_encoder *encoder)
{
 struct drm_encoder *ext_encoder = amdgpu_get_external_encoder(encoder);

 if (ext_encoder)

  amdgpu_atombios_encoder_setup_external_encoder(encoder, ext_encoder,
       EXTERNAL_ENCODER_ACTION_V3_DDC_SETUP);

}
