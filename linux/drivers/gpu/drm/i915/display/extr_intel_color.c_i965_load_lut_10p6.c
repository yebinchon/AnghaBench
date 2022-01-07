
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct intel_crtc {int pipe; TYPE_1__ base; } ;
struct drm_property_blob {struct drm_color_lut* data; } ;
struct drm_i915_private {int dummy; } ;
struct drm_color_lut {int blue; int green; int red; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int I915_WRITE (int ,int ) ;
 int PALETTE (int,int) ;
 int PIPEGCMAX (int,int) ;
 int drm_color_lut_size (struct drm_property_blob const*) ;
 int i965_lut_10p6_ldw (struct drm_color_lut const*) ;
 int i965_lut_10p6_udw (struct drm_color_lut const*) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static void i965_load_lut_10p6(struct intel_crtc *crtc,
          const struct drm_property_blob *blob)
{
 struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 const struct drm_color_lut *lut = blob->data;
 int i, lut_size = drm_color_lut_size(blob);
 enum pipe pipe = crtc->pipe;

 for (i = 0; i < lut_size - 1; i++) {
  I915_WRITE(PALETTE(pipe, 2 * i + 0),
      i965_lut_10p6_ldw(&lut[i]));
  I915_WRITE(PALETTE(pipe, 2 * i + 1),
      i965_lut_10p6_udw(&lut[i]));
 }

 I915_WRITE(PIPEGCMAX(pipe, 0), lut[i].red);
 I915_WRITE(PIPEGCMAX(pipe, 1), lut[i].green);
 I915_WRITE(PIPEGCMAX(pipe, 2), lut[i].blue);
}
