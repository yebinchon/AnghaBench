
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int crtc_w; int crtc_h; int rotation; TYPE_1__* plane; } ;
struct intel_plane_state {TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_3__ {int dev; } ;


 int DRM_MODE_ROTATE_0 ;
 scalar_t__ HAS_CUR_FBC (struct drm_i915_private*) ;
 int intel_cursor_size_ok (struct intel_plane_state const*) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static bool i9xx_cursor_size_ok(const struct intel_plane_state *plane_state)
{
 struct drm_i915_private *dev_priv =
  to_i915(plane_state->base.plane->dev);
 int width = plane_state->base.crtc_w;
 int height = plane_state->base.crtc_h;

 if (!intel_cursor_size_ok(plane_state))
  return 0;


 switch (width) {
 case 256:
 case 128:
 case 64:
  break;
 default:
  return 0;
 }







 if (HAS_CUR_FBC(dev_priv) &&
     plane_state->base.rotation & DRM_MODE_ROTATE_0) {
  if (height < 8 || height > width)
   return 0;
 } else {
  if (height != width)
   return 0;
 }

 return 1;
}
