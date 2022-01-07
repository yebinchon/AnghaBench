
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psb_intel_sdvo {int ddc; int * sdvo_lvds_fixed_mode; } ;
struct drm_encoder {int dev; } ;


 int drm_mode_destroy (int ,int *) ;
 int gma_encoder_destroy (struct drm_encoder*) ;
 int i2c_del_adapter (int *) ;
 struct psb_intel_sdvo* to_psb_intel_sdvo (struct drm_encoder*) ;

__attribute__((used)) static void psb_intel_sdvo_enc_destroy(struct drm_encoder *encoder)
{
 struct psb_intel_sdvo *psb_intel_sdvo = to_psb_intel_sdvo(encoder);

 if (psb_intel_sdvo->sdvo_lvds_fixed_mode != ((void*)0))
  drm_mode_destroy(encoder->dev,
     psb_intel_sdvo->sdvo_lvds_fixed_mode);

 i2c_del_adapter(&psb_intel_sdvo->ddc);
 gma_encoder_destroy(encoder);
}
