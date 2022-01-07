
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_dsi {scalar_t__ gpio_panel; } ;
struct drm_encoder {int dummy; } ;


 struct intel_dsi* enc_to_intel_dsi (struct drm_encoder*) ;
 int gpiod_put (scalar_t__) ;
 int intel_encoder_destroy (struct drm_encoder*) ;

__attribute__((used)) static void intel_dsi_encoder_destroy(struct drm_encoder *encoder)
{
 struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);


 if (intel_dsi->gpio_panel)
  gpiod_put(intel_dsi->gpio_panel);

 intel_encoder_destroy(encoder);
}
