
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int rotation; int src; struct drm_framebuffer* fb; } ;
struct intel_plane_state {TYPE_1__ base; } ;
struct drm_framebuffer {TYPE_2__* format; } ;
struct TYPE_4__ {int format; } ;


 int DRM_DEBUG_KMS (char*) ;
 unsigned int DRM_MODE_REFLECT_X ;
 unsigned int DRM_MODE_ROTATE_270 ;
 unsigned int DRM_MODE_ROTATE_90 ;
 int EINVAL ;
 int drm_rect_width (int *) ;
 scalar_t__ is_planar_yuv_format (int ) ;

__attribute__((used)) static int skl_plane_check_nv12_rotation(const struct intel_plane_state *plane_state)
{
 const struct drm_framebuffer *fb = plane_state->base.fb;
 unsigned int rotation = plane_state->base.rotation;
 int src_w = drm_rect_width(&plane_state->base.src) >> 16;


 if (is_planar_yuv_format(fb->format->format) && src_w & 3 &&
     (rotation == DRM_MODE_ROTATE_270 ||
      rotation == (DRM_MODE_REFLECT_X | DRM_MODE_ROTATE_90))) {
  DRM_DEBUG_KMS("src width must be multiple of 4 for rotated planar YUV\n");
  return -EINVAL;
 }

 return 0;
}
