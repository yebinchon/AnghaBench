
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dev; } ;
struct intel_crtc {int pipe; TYPE_1__ base; } ;
struct drm_property_blob {struct drm_color_lut* data; } ;
struct drm_i915_private {int dummy; } ;
struct drm_color_lut {int dummy; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int I915_WRITE (int ,int ) ;
 int PREC_PAL_DATA (int) ;
 int PREC_PAL_INDEX (int) ;
 int drm_color_lut_size (struct drm_property_blob const*) ;
 int ilk_lut_10 (struct drm_color_lut const*) ;
 int ivb_lut_10_size (int ) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static void ivb_load_lut_10(struct intel_crtc *crtc,
       const struct drm_property_blob *blob,
       u32 prec_index)
{
 struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 int hw_lut_size = ivb_lut_10_size(prec_index);
 const struct drm_color_lut *lut = blob->data;
 int i, lut_size = drm_color_lut_size(blob);
 enum pipe pipe = crtc->pipe;

 for (i = 0; i < hw_lut_size; i++) {

  const struct drm_color_lut *entry =
   &lut[i * (lut_size - 1) / (hw_lut_size - 1)];

  I915_WRITE(PREC_PAL_INDEX(pipe), prec_index++);
  I915_WRITE(PREC_PAL_DATA(pipe), ilk_lut_10(entry));
 }





 I915_WRITE(PREC_PAL_INDEX(pipe), 0);
}
