
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {unsigned int rotation; scalar_t__ color_encoding; scalar_t__ color_range; struct drm_framebuffer* fb; TYPE_1__* plane; } ;
struct drm_intel_sprite_colorkey {int flags; } ;
struct intel_plane_state {TYPE_3__ base; struct drm_intel_sprite_colorkey ckey; } ;
struct intel_crtc_state {int dummy; } ;
struct drm_i915_private {int dummy; } ;
struct drm_framebuffer {scalar_t__ modifier; TYPE_2__* format; } ;
struct TYPE_5__ {int format; } ;
struct TYPE_4__ {int dev; } ;


 scalar_t__ DRM_COLOR_YCBCR_BT709 ;
 scalar_t__ DRM_COLOR_YCBCR_FULL_RANGE ;






 unsigned int DRM_MODE_ROTATE_180 ;
 scalar_t__ I915_FORMAT_MOD_X_TILED ;
 int I915_SET_COLORKEY_DESTINATION ;
 int I915_SET_COLORKEY_SOURCE ;
 scalar_t__ IS_IVYBRIDGE (struct drm_i915_private*) ;
 int MISSING_CASE (int) ;
 int SPRITE_DEST_KEY ;
 int SPRITE_ENABLE ;
 int SPRITE_FORMAT_RGBX888 ;
 int SPRITE_FORMAT_YUV422 ;
 int SPRITE_INT_GAMMA_DISABLE ;
 int SPRITE_RGB_ORDER_RGBX ;
 int SPRITE_ROTATE_180 ;
 int SPRITE_SOURCE_KEY ;
 int SPRITE_TILED ;
 int SPRITE_TRICKLE_FEED_DISABLE ;
 int SPRITE_YUV_ORDER_UYVY ;
 int SPRITE_YUV_ORDER_VYUY ;
 int SPRITE_YUV_ORDER_YUYV ;
 int SPRITE_YUV_ORDER_YVYU ;
 int SPRITE_YUV_RANGE_CORRECTION_DISABLE ;
 int SPRITE_YUV_TO_RGB_CSC_FORMAT_BT709 ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static u32 ivb_sprite_ctl(const struct intel_crtc_state *crtc_state,
     const struct intel_plane_state *plane_state)
{
 struct drm_i915_private *dev_priv =
  to_i915(plane_state->base.plane->dev);
 const struct drm_framebuffer *fb = plane_state->base.fb;
 unsigned int rotation = plane_state->base.rotation;
 const struct drm_intel_sprite_colorkey *key = &plane_state->ckey;
 u32 sprctl;

 sprctl = SPRITE_ENABLE;

 if (IS_IVYBRIDGE(dev_priv))
  sprctl |= SPRITE_TRICKLE_FEED_DISABLE;

 switch (fb->format->format) {
 case 131:
  sprctl |= SPRITE_FORMAT_RGBX888 | SPRITE_RGB_ORDER_RGBX;
  break;
 case 130:
  sprctl |= SPRITE_FORMAT_RGBX888;
  break;
 case 129:
  sprctl |= SPRITE_FORMAT_YUV422 | SPRITE_YUV_ORDER_YUYV;
  break;
 case 128:
  sprctl |= SPRITE_FORMAT_YUV422 | SPRITE_YUV_ORDER_YVYU;
  break;
 case 133:
  sprctl |= SPRITE_FORMAT_YUV422 | SPRITE_YUV_ORDER_UYVY;
  break;
 case 132:
  sprctl |= SPRITE_FORMAT_YUV422 | SPRITE_YUV_ORDER_VYUY;
  break;
 default:
  MISSING_CASE(fb->format->format);
  return 0;
 }

 sprctl |= SPRITE_INT_GAMMA_DISABLE;

 if (plane_state->base.color_encoding == DRM_COLOR_YCBCR_BT709)
  sprctl |= SPRITE_YUV_TO_RGB_CSC_FORMAT_BT709;

 if (plane_state->base.color_range == DRM_COLOR_YCBCR_FULL_RANGE)
  sprctl |= SPRITE_YUV_RANGE_CORRECTION_DISABLE;

 if (fb->modifier == I915_FORMAT_MOD_X_TILED)
  sprctl |= SPRITE_TILED;

 if (rotation & DRM_MODE_ROTATE_180)
  sprctl |= SPRITE_ROTATE_180;

 if (key->flags & I915_SET_COLORKEY_DESTINATION)
  sprctl |= SPRITE_DEST_KEY;
 else if (key->flags & I915_SET_COLORKEY_SOURCE)
  sprctl |= SPRITE_SOURCE_KEY;

 return sprctl;
}
