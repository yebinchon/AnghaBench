
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct drm_property_blob* degamma_lut; struct drm_property_blob* gamma_lut; int crtc; } ;
struct intel_crtc_state {TYPE_1__ base; } ;
struct intel_crtc {int dummy; } ;
struct drm_property_blob {int dummy; } ;


 int cherryview_load_csc_matrix (struct intel_crtc_state const*) ;
 int chv_load_cgm_degamma (struct intel_crtc*,struct drm_property_blob const*) ;
 int chv_load_cgm_gamma (struct intel_crtc*,struct drm_property_blob const*) ;
 scalar_t__ crtc_state_is_legacy_gamma (struct intel_crtc_state const*) ;
 int i9xx_load_luts (struct intel_crtc_state const*) ;
 struct intel_crtc* to_intel_crtc (int ) ;

__attribute__((used)) static void chv_load_luts(const struct intel_crtc_state *crtc_state)
{
 struct intel_crtc *crtc = to_intel_crtc(crtc_state->base.crtc);
 const struct drm_property_blob *gamma_lut = crtc_state->base.gamma_lut;
 const struct drm_property_blob *degamma_lut = crtc_state->base.degamma_lut;

 cherryview_load_csc_matrix(crtc_state);

 if (crtc_state_is_legacy_gamma(crtc_state)) {
  i9xx_load_luts(crtc_state);
  return;
 }

 if (degamma_lut)
  chv_load_cgm_degamma(crtc, degamma_lut);

 if (gamma_lut)
  chv_load_cgm_gamma(crtc, gamma_lut);
}
