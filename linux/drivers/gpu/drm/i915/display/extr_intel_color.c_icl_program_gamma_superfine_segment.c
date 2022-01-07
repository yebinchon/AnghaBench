
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {struct drm_property_blob* gamma_lut; int crtc; } ;
struct intel_crtc_state {TYPE_1__ base; } ;
struct TYPE_4__ {int dev; } ;
struct intel_crtc {int pipe; TYPE_2__ base; } ;
struct drm_property_blob {struct drm_color_lut* data; } ;
struct drm_i915_private {int dummy; } ;
struct drm_color_lut {int dummy; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int I915_WRITE (int ,int ) ;
 int PAL_PREC_AUTO_INCREMENT ;
 int PREC_PAL_MULTI_SEG_DATA (int) ;
 int PREC_PAL_MULTI_SEG_INDEX (int) ;
 int ilk_lut_12p4_ldw (struct drm_color_lut const*) ;
 int ilk_lut_12p4_udw (struct drm_color_lut const*) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_crtc* to_intel_crtc (int ) ;

__attribute__((used)) static void
icl_program_gamma_superfine_segment(const struct intel_crtc_state *crtc_state)
{
 struct intel_crtc *crtc = to_intel_crtc(crtc_state->base.crtc);
 struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 const struct drm_property_blob *blob = crtc_state->base.gamma_lut;
 const struct drm_color_lut *lut = blob->data;
 enum pipe pipe = crtc->pipe;
 u32 i;
 I915_WRITE(PREC_PAL_MULTI_SEG_INDEX(pipe), PAL_PREC_AUTO_INCREMENT);

 for (i = 0; i < 9; i++) {
  const struct drm_color_lut *entry = &lut[i];

  I915_WRITE(PREC_PAL_MULTI_SEG_DATA(pipe),
      ilk_lut_12p4_ldw(entry));
  I915_WRITE(PREC_PAL_MULTI_SEG_DATA(pipe),
      ilk_lut_12p4_udw(entry));
 }
}
