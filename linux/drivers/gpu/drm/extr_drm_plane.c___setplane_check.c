
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct drm_plane {int possible_crtcs; } ;
struct drm_framebuffer {int modifier; TYPE_1__* format; } ;
struct drm_format_name_buf {int dummy; } ;
struct drm_crtc {int dummy; } ;
typedef scalar_t__ int32_t ;
struct TYPE_2__ {int format; } ;


 int DRM_DEBUG_KMS (char*,...) ;
 int EINVAL ;
 int ERANGE ;
 scalar_t__ INT_MAX ;
 int drm_crtc_mask (struct drm_crtc*) ;
 int drm_framebuffer_check_src_coords (scalar_t__,scalar_t__,scalar_t__,scalar_t__,struct drm_framebuffer*) ;
 int drm_get_format_name (int ,struct drm_format_name_buf*) ;
 int drm_plane_check_pixel_format (struct drm_plane*,int ,int ) ;

__attribute__((used)) static int __setplane_check(struct drm_plane *plane,
       struct drm_crtc *crtc,
       struct drm_framebuffer *fb,
       int32_t crtc_x, int32_t crtc_y,
       uint32_t crtc_w, uint32_t crtc_h,
       uint32_t src_x, uint32_t src_y,
       uint32_t src_w, uint32_t src_h)
{
 int ret;


 if (!(plane->possible_crtcs & drm_crtc_mask(crtc))) {
  DRM_DEBUG_KMS("Invalid crtc for plane\n");
  return -EINVAL;
 }


 ret = drm_plane_check_pixel_format(plane, fb->format->format,
        fb->modifier);
 if (ret) {
  struct drm_format_name_buf format_name;

  DRM_DEBUG_KMS("Invalid pixel format %s, modifier 0x%llx\n",
         drm_get_format_name(fb->format->format,
        &format_name),
         fb->modifier);
  return ret;
 }


 if (crtc_w > INT_MAX ||
     crtc_x > INT_MAX - (int32_t) crtc_w ||
     crtc_h > INT_MAX ||
     crtc_y > INT_MAX - (int32_t) crtc_h) {
  DRM_DEBUG_KMS("Invalid CRTC coordinates %ux%u+%d+%d\n",
         crtc_w, crtc_h, crtc_x, crtc_y);
  return -ERANGE;
 }

 ret = drm_framebuffer_check_src_coords(src_x, src_y, src_w, src_h, fb);
 if (ret)
  return ret;

 return 0;
}
