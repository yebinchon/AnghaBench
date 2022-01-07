
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int crtc_w; int rotation; TYPE_1__* plane; } ;
struct intel_plane_state {TYPE_2__ base; } ;
struct intel_crtc_state {int dummy; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_3__ {int dev; } ;


 int DRM_MODE_ROTATE_180 ;
 scalar_t__ IS_GEN (struct drm_i915_private*,int) ;
 scalar_t__ IS_IVYBRIDGE (struct drm_i915_private*) ;
 int MCURSOR_MODE_128_ARGB_AX ;
 int MCURSOR_MODE_256_ARGB_AX ;
 int MCURSOR_MODE_64_ARGB_AX ;
 int MCURSOR_ROTATE_180 ;
 int MCURSOR_TRICKLE_FEED_DISABLE ;
 int MISSING_CASE (int) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static u32 i9xx_cursor_ctl(const struct intel_crtc_state *crtc_state,
      const struct intel_plane_state *plane_state)
{
 struct drm_i915_private *dev_priv =
  to_i915(plane_state->base.plane->dev);
 u32 cntl = 0;

 if (IS_GEN(dev_priv, 6) || IS_IVYBRIDGE(dev_priv))
  cntl |= MCURSOR_TRICKLE_FEED_DISABLE;

 switch (plane_state->base.crtc_w) {
 case 64:
  cntl |= MCURSOR_MODE_64_ARGB_AX;
  break;
 case 128:
  cntl |= MCURSOR_MODE_128_ARGB_AX;
  break;
 case 256:
  cntl |= MCURSOR_MODE_256_ARGB_AX;
  break;
 default:
  MISSING_CASE(plane_state->base.crtc_w);
  return 0;
 }

 if (plane_state->base.rotation & DRM_MODE_ROTATE_180)
  cntl |= MCURSOR_ROTATE_180;

 return cntl;
}
