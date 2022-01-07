
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct drm_property_blob* degamma_lut; struct drm_property_blob* gamma_lut; int crtc; } ;
struct intel_crtc_state {scalar_t__ gamma_mode; TYPE_1__ base; } ;
struct intel_crtc {int dummy; } ;
struct drm_property_blob {int dummy; } ;


 scalar_t__ GAMMA_MODE_MODE_8BIT ;
 scalar_t__ GAMMA_MODE_MODE_SPLIT ;
 int PAL_PREC_INDEX_VALUE (int) ;
 int PAL_PREC_SPLIT_MODE ;
 int bdw_load_lut_10 (struct intel_crtc*,struct drm_property_blob const*,int) ;
 int i9xx_load_luts (struct intel_crtc_state const*) ;
 int ivb_load_lut_ext_max (struct intel_crtc*) ;
 struct intel_crtc* to_intel_crtc (int ) ;

__attribute__((used)) static void bdw_load_luts(const struct intel_crtc_state *crtc_state)
{
 struct intel_crtc *crtc = to_intel_crtc(crtc_state->base.crtc);
 const struct drm_property_blob *gamma_lut = crtc_state->base.gamma_lut;
 const struct drm_property_blob *degamma_lut = crtc_state->base.degamma_lut;

 if (crtc_state->gamma_mode == GAMMA_MODE_MODE_8BIT) {
  i9xx_load_luts(crtc_state);
 } else if (crtc_state->gamma_mode == GAMMA_MODE_MODE_SPLIT) {
  bdw_load_lut_10(crtc, degamma_lut, PAL_PREC_SPLIT_MODE |
    PAL_PREC_INDEX_VALUE(0));
  ivb_load_lut_ext_max(crtc);
  bdw_load_lut_10(crtc, gamma_lut, PAL_PREC_SPLIT_MODE |
    PAL_PREC_INDEX_VALUE(512));
 } else {
  const struct drm_property_blob *blob = gamma_lut ?: degamma_lut;

  bdw_load_lut_10(crtc, blob,
    PAL_PREC_INDEX_VALUE(0));
  ivb_load_lut_ext_max(crtc);
 }
}
