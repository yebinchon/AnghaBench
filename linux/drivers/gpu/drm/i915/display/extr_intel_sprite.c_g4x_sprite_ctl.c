
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
 int DVS_DEST_KEY ;
 int DVS_ENABLE ;
 int DVS_FORMAT_RGBX888 ;
 int DVS_FORMAT_YUV422 ;
 int DVS_RGB_ORDER_XBGR ;
 int DVS_ROTATE_180 ;
 int DVS_SOURCE_KEY ;
 int DVS_TILED ;
 int DVS_TRICKLE_FEED_DISABLE ;
 int DVS_YUV_FORMAT_BT709 ;
 int DVS_YUV_ORDER_UYVY ;
 int DVS_YUV_ORDER_VYUY ;
 int DVS_YUV_ORDER_YUYV ;
 int DVS_YUV_ORDER_YVYU ;
 int DVS_YUV_RANGE_CORRECTION_DISABLE ;
 scalar_t__ I915_FORMAT_MOD_X_TILED ;
 int I915_SET_COLORKEY_DESTINATION ;
 int I915_SET_COLORKEY_SOURCE ;
 scalar_t__ IS_GEN (struct drm_i915_private*,int) ;
 int MISSING_CASE (int) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static u32 g4x_sprite_ctl(const struct intel_crtc_state *crtc_state,
     const struct intel_plane_state *plane_state)
{
 struct drm_i915_private *dev_priv =
  to_i915(plane_state->base.plane->dev);
 const struct drm_framebuffer *fb = plane_state->base.fb;
 unsigned int rotation = plane_state->base.rotation;
 const struct drm_intel_sprite_colorkey *key = &plane_state->ckey;
 u32 dvscntr;

 dvscntr = DVS_ENABLE;

 if (IS_GEN(dev_priv, 6))
  dvscntr |= DVS_TRICKLE_FEED_DISABLE;

 switch (fb->format->format) {
 case 131:
  dvscntr |= DVS_FORMAT_RGBX888 | DVS_RGB_ORDER_XBGR;
  break;
 case 130:
  dvscntr |= DVS_FORMAT_RGBX888;
  break;
 case 129:
  dvscntr |= DVS_FORMAT_YUV422 | DVS_YUV_ORDER_YUYV;
  break;
 case 128:
  dvscntr |= DVS_FORMAT_YUV422 | DVS_YUV_ORDER_YVYU;
  break;
 case 133:
  dvscntr |= DVS_FORMAT_YUV422 | DVS_YUV_ORDER_UYVY;
  break;
 case 132:
  dvscntr |= DVS_FORMAT_YUV422 | DVS_YUV_ORDER_VYUY;
  break;
 default:
  MISSING_CASE(fb->format->format);
  return 0;
 }

 if (plane_state->base.color_encoding == DRM_COLOR_YCBCR_BT709)
  dvscntr |= DVS_YUV_FORMAT_BT709;

 if (plane_state->base.color_range == DRM_COLOR_YCBCR_FULL_RANGE)
  dvscntr |= DVS_YUV_RANGE_CORRECTION_DISABLE;

 if (fb->modifier == I915_FORMAT_MOD_X_TILED)
  dvscntr |= DVS_TILED;

 if (rotation & DRM_MODE_ROTATE_180)
  dvscntr |= DVS_ROTATE_180;

 if (key->flags & I915_SET_COLORKEY_DESTINATION)
  dvscntr |= DVS_DEST_KEY;
 else if (key->flags & I915_SET_COLORKEY_SOURCE)
  dvscntr |= DVS_SOURCE_KEY;

 return dvscntr;
}
