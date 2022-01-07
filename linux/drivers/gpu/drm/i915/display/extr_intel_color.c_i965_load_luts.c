
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct drm_property_blob* gamma_lut; int crtc; } ;
struct intel_crtc_state {scalar_t__ gamma_mode; TYPE_1__ base; } ;
struct intel_crtc {int dummy; } ;
struct drm_property_blob {int dummy; } ;


 scalar_t__ GAMMA_MODE_MODE_8BIT ;
 int i965_load_lut_10p6 (struct intel_crtc*,struct drm_property_blob const*) ;
 int i9xx_load_luts (struct intel_crtc_state const*) ;
 struct intel_crtc* to_intel_crtc (int ) ;

__attribute__((used)) static void i965_load_luts(const struct intel_crtc_state *crtc_state)
{
 struct intel_crtc *crtc = to_intel_crtc(crtc_state->base.crtc);
 const struct drm_property_blob *gamma_lut = crtc_state->base.gamma_lut;

 if (crtc_state->gamma_mode == GAMMA_MODE_MODE_8BIT)
  i9xx_load_luts(crtc_state);
 else
  i965_load_lut_10p6(crtc, gamma_lut);
}
