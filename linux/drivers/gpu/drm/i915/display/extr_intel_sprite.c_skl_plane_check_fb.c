
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {unsigned int rotation; struct drm_framebuffer* fb; int plane; } ;
struct intel_plane_state {TYPE_2__ base; } ;
struct TYPE_6__ {int dev; } ;
struct intel_plane {TYPE_1__ base; } ;
struct TYPE_9__ {int flags; } ;
struct TYPE_10__ {TYPE_4__ adjusted_mode; scalar_t__ enable; } ;
struct intel_crtc_state {TYPE_5__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_framebuffer {scalar_t__ modifier; TYPE_3__* format; } ;
struct drm_format_name_buf {int dummy; } ;
struct TYPE_8__ {int format; } ;


 int DRM_DEBUG_KMS (char*,...) ;



 scalar_t__ DRM_FORMAT_MOD_LINEAR ;
 int DRM_MODE_FLAG_INTERLACE ;
 unsigned int DRM_MODE_REFLECT_X ;
 unsigned int DRM_MODE_ROTATE_0 ;
 unsigned int DRM_MODE_ROTATE_180 ;
 int EINVAL ;
 scalar_t__ I915_FORMAT_MOD_Y_TILED ;
 scalar_t__ I915_FORMAT_MOD_Y_TILED_CCS ;
 scalar_t__ I915_FORMAT_MOD_Yf_TILED ;
 scalar_t__ I915_FORMAT_MOD_Yf_TILED_CCS ;
 int INTEL_GEN (struct drm_i915_private*) ;
 int drm_get_format_name (int,struct drm_format_name_buf*) ;
 scalar_t__ drm_rotation_90_or_270 (unsigned int) ;
 scalar_t__ is_ccs_modifier (scalar_t__) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_plane* to_intel_plane (int ) ;

__attribute__((used)) static int skl_plane_check_fb(const struct intel_crtc_state *crtc_state,
         const struct intel_plane_state *plane_state)
{
 struct intel_plane *plane = to_intel_plane(plane_state->base.plane);
 struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
 const struct drm_framebuffer *fb = plane_state->base.fb;
 unsigned int rotation = plane_state->base.rotation;
 struct drm_format_name_buf format_name;

 if (!fb)
  return 0;

 if (rotation & ~(DRM_MODE_ROTATE_0 | DRM_MODE_ROTATE_180) &&
     is_ccs_modifier(fb->modifier)) {
  DRM_DEBUG_KMS("RC support only with 0/180 degree rotation (%x)\n",
         rotation);
  return -EINVAL;
 }

 if (rotation & DRM_MODE_REFLECT_X &&
     fb->modifier == DRM_FORMAT_MOD_LINEAR) {
  DRM_DEBUG_KMS("horizontal flip is not supported with linear surface formats\n");
  return -EINVAL;
 }

 if (drm_rotation_90_or_270(rotation)) {
  if (fb->modifier != I915_FORMAT_MOD_Y_TILED &&
      fb->modifier != I915_FORMAT_MOD_Yf_TILED) {
   DRM_DEBUG_KMS("Y/Yf tiling required for 90/270!\n");
   return -EINVAL;
  }





  switch (fb->format->format) {
  case 135:
   if (INTEL_GEN(dev_priv) >= 11)
    break;

  case 136:
  case 133:
  case 134:
  case 137:
  case 138:
  case 130:
  case 129:
  case 128:
  case 132:
  case 131:
   DRM_DEBUG_KMS("Unsupported pixel format %s for 90/270!\n",
          drm_get_format_name(fb->format->format,
         &format_name));
   return -EINVAL;
  default:
   break;
  }
 }


 if (crtc_state->base.enable &&
     crtc_state->base.adjusted_mode.flags & DRM_MODE_FLAG_INTERLACE &&
     (fb->modifier == I915_FORMAT_MOD_Y_TILED ||
      fb->modifier == I915_FORMAT_MOD_Yf_TILED ||
      fb->modifier == I915_FORMAT_MOD_Y_TILED_CCS ||
      fb->modifier == I915_FORMAT_MOD_Yf_TILED_CCS)) {
  DRM_DEBUG_KMS("Y/Yf tiling not supported in IF-ID mode\n");
  return -EINVAL;
 }

 return 0;
}
