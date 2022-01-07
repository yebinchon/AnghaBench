
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {unsigned int rotation; struct drm_framebuffer* fb; TYPE_1__* plane; } ;
struct intel_plane_state {TYPE_2__ base; } ;
struct intel_crtc_state {int dummy; } ;
struct drm_i915_private {int dummy; } ;
struct drm_framebuffer {scalar_t__ modifier; TYPE_3__* format; } ;
struct TYPE_6__ {int format; } ;
struct TYPE_4__ {int dev; } ;


 int DISPLAY_PLANE_ENABLE ;
 int DISPPLANE_8BPP ;
 int DISPPLANE_BGRX101010 ;
 int DISPPLANE_BGRX555 ;
 int DISPPLANE_BGRX565 ;
 int DISPPLANE_BGRX888 ;
 int DISPPLANE_MIRROR ;
 int DISPPLANE_RGBX101010 ;
 int DISPPLANE_RGBX888 ;
 int DISPPLANE_ROTATE_180 ;
 int DISPPLANE_TILED ;
 int DISPPLANE_TRICKLE_FEED_DISABLE ;







 unsigned int DRM_MODE_REFLECT_X ;
 unsigned int DRM_MODE_ROTATE_180 ;
 scalar_t__ I915_FORMAT_MOD_X_TILED ;
 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_G4X (struct drm_i915_private*) ;
 scalar_t__ IS_GEN (struct drm_i915_private*,int) ;
 scalar_t__ IS_IVYBRIDGE (struct drm_i915_private*) ;
 int MISSING_CASE (int) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static u32 i9xx_plane_ctl(const struct intel_crtc_state *crtc_state,
     const struct intel_plane_state *plane_state)
{
 struct drm_i915_private *dev_priv =
  to_i915(plane_state->base.plane->dev);
 const struct drm_framebuffer *fb = plane_state->base.fb;
 unsigned int rotation = plane_state->base.rotation;
 u32 dspcntr;

 dspcntr = DISPLAY_PLANE_ENABLE;

 if (IS_G4X(dev_priv) || IS_GEN(dev_priv, 5) ||
     IS_GEN(dev_priv, 6) || IS_IVYBRIDGE(dev_priv))
  dspcntr |= DISPPLANE_TRICKLE_FEED_DISABLE;

 switch (fb->format->format) {
 case 134:
  dspcntr |= DISPPLANE_8BPP;
  break;
 case 130:
  dspcntr |= DISPPLANE_BGRX555;
  break;
 case 133:
  dspcntr |= DISPPLANE_BGRX565;
  break;
 case 128:
  dspcntr |= DISPPLANE_BGRX888;
  break;
 case 131:
  dspcntr |= DISPPLANE_RGBX888;
  break;
 case 129:
  dspcntr |= DISPPLANE_BGRX101010;
  break;
 case 132:
  dspcntr |= DISPPLANE_RGBX101010;
  break;
 default:
  MISSING_CASE(fb->format->format);
  return 0;
 }

 if (INTEL_GEN(dev_priv) >= 4 &&
     fb->modifier == I915_FORMAT_MOD_X_TILED)
  dspcntr |= DISPPLANE_TILED;

 if (rotation & DRM_MODE_ROTATE_180)
  dspcntr |= DISPPLANE_ROTATE_180;

 if (rotation & DRM_MODE_REFLECT_X)
  dspcntr |= DISPPLANE_MIRROR;

 return dspcntr;
}
