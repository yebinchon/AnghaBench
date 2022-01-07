
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_sdvo {int ddc; } ;
struct drm_encoder {int dummy; } ;


 int i2c_del_adapter (int *) ;
 int intel_encoder_destroy (struct drm_encoder*) ;
 int to_intel_encoder (struct drm_encoder*) ;
 struct intel_sdvo* to_sdvo (int ) ;

__attribute__((used)) static void intel_sdvo_enc_destroy(struct drm_encoder *encoder)
{
 struct intel_sdvo *intel_sdvo = to_sdvo(to_intel_encoder(encoder));

 i2c_del_adapter(&intel_sdvo->ddc);
 intel_encoder_destroy(encoder);
}
