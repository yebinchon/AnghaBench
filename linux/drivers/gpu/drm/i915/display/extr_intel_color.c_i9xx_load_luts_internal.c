
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int crtc; } ;
struct intel_crtc_state {TYPE_1__ base; } ;
struct TYPE_4__ {int dev; } ;
struct intel_crtc {int pipe; TYPE_2__ base; } ;
struct drm_property_blob {struct drm_color_lut* data; } ;
struct drm_i915_private {int dummy; } ;
struct drm_color_lut {int blue; int green; int red; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 scalar_t__ HAS_GMCH (struct drm_i915_private*) ;
 int I915_WRITE (int ,int) ;
 int INTEL_OUTPUT_DSI ;
 int LGC_PALETTE (int,int) ;
 int PALETTE (int,int) ;
 int assert_dsi_pll_enabled (struct drm_i915_private*) ;
 int assert_pll_enabled (struct drm_i915_private*,int) ;
 int drm_color_lut_extract (int ,int) ;
 scalar_t__ intel_crtc_has_type (struct intel_crtc_state const*,int ) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_crtc* to_intel_crtc (int ) ;

__attribute__((used)) static void i9xx_load_luts_internal(const struct intel_crtc_state *crtc_state,
        const struct drm_property_blob *blob)
{
 struct intel_crtc *crtc = to_intel_crtc(crtc_state->base.crtc);
 struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 enum pipe pipe = crtc->pipe;
 int i;

 if (HAS_GMCH(dev_priv)) {
  if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI))
   assert_dsi_pll_enabled(dev_priv);
  else
   assert_pll_enabled(dev_priv, pipe);
 }

 if (blob) {
  const struct drm_color_lut *lut = blob->data;

  for (i = 0; i < 256; i++) {
   u32 word =
    (drm_color_lut_extract(lut[i].red, 8) << 16) |
    (drm_color_lut_extract(lut[i].green, 8) << 8) |
    drm_color_lut_extract(lut[i].blue, 8);

   if (HAS_GMCH(dev_priv))
    I915_WRITE(PALETTE(pipe, i), word);
   else
    I915_WRITE(LGC_PALETTE(pipe, i), word);
  }
 }
}
