
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {unsigned int rotation; scalar_t__ color_encoding; struct drm_framebuffer* fb; } ;
struct drm_intel_sprite_colorkey {int flags; } ;
struct intel_plane_state {TYPE_2__ base; struct drm_intel_sprite_colorkey ckey; } ;
struct intel_crtc_state {int dummy; } ;
struct drm_framebuffer {scalar_t__ modifier; TYPE_1__* format; } ;
struct TYPE_3__ {int format; } ;


 scalar_t__ DRM_COLOR_YCBCR_BT709 ;
 unsigned int DRM_MODE_REFLECT_X ;
 unsigned int DRM_MODE_ROTATE_180 ;
 scalar_t__ I915_FORMAT_MOD_X_TILED ;
 int I915_SET_COLORKEY_SOURCE ;
 int MISSING_CASE (int) ;
 int SP_ENABLE ;
 int SP_FORMAT_BGR565 ;
 int SP_FORMAT_BGRA8888 ;
 int SP_FORMAT_BGRX8888 ;
 int SP_FORMAT_RGBA1010102 ;
 int SP_FORMAT_RGBA8888 ;
 int SP_FORMAT_RGBX1010102 ;
 int SP_FORMAT_RGBX8888 ;
 int SP_FORMAT_YUV422 ;
 int SP_MIRROR ;
 int SP_ROTATE_180 ;
 int SP_SOURCE_KEY ;
 int SP_TILED ;
 int SP_YUV_FORMAT_BT709 ;
 int SP_YUV_ORDER_UYVY ;
 int SP_YUV_ORDER_VYUY ;
 int SP_YUV_ORDER_YUYV ;
 int SP_YUV_ORDER_YVYU ;

__attribute__((used)) static u32 vlv_sprite_ctl(const struct intel_crtc_state *crtc_state,
     const struct intel_plane_state *plane_state)
{
 const struct drm_framebuffer *fb = plane_state->base.fb;
 unsigned int rotation = plane_state->base.rotation;
 const struct drm_intel_sprite_colorkey *key = &plane_state->ckey;
 u32 sprctl;

 sprctl = SP_ENABLE;

 switch (fb->format->format) {
 case 129:
  sprctl |= SP_FORMAT_YUV422 | SP_YUV_ORDER_YUYV;
  break;
 case 128:
  sprctl |= SP_FORMAT_YUV422 | SP_YUV_ORDER_YVYU;
  break;
 case 134:
  sprctl |= SP_FORMAT_YUV422 | SP_YUV_ORDER_UYVY;
  break;
 case 133:
  sprctl |= SP_FORMAT_YUV422 | SP_YUV_ORDER_VYUY;
  break;
 case 135:
  sprctl |= SP_FORMAT_BGR565;
  break;
 case 130:
  sprctl |= SP_FORMAT_BGRX8888;
  break;
 case 136:
  sprctl |= SP_FORMAT_BGRA8888;
  break;
 case 132:
  sprctl |= SP_FORMAT_RGBX1010102;
  break;
 case 138:
  sprctl |= SP_FORMAT_RGBA1010102;
  break;
 case 131:
  sprctl |= SP_FORMAT_RGBX8888;
  break;
 case 137:
  sprctl |= SP_FORMAT_RGBA8888;
  break;
 default:
  MISSING_CASE(fb->format->format);
  return 0;
 }

 if (plane_state->base.color_encoding == DRM_COLOR_YCBCR_BT709)
  sprctl |= SP_YUV_FORMAT_BT709;

 if (fb->modifier == I915_FORMAT_MOD_X_TILED)
  sprctl |= SP_TILED;

 if (rotation & DRM_MODE_ROTATE_180)
  sprctl |= SP_ROTATE_180;

 if (rotation & DRM_MODE_REFLECT_X)
  sprctl |= SP_MIRROR;

 if (key->flags & I915_SET_COLORKEY_SOURCE)
  sprctl |= SP_SOURCE_KEY;

 return sprctl;
}
