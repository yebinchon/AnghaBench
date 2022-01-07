
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_rect {int y2; int x2; } ;
struct drm_plane_state {unsigned int rotation; scalar_t__ crtc; int visible; struct drm_rect dst; struct drm_rect src; struct drm_framebuffer* fb; } ;
struct drm_framebuffer {int width; int height; } ;
struct drm_crtc_state {scalar_t__ crtc; int mode; scalar_t__ enable; } ;


 int DRM_DEBUG_KMS (char*) ;
 int EINVAL ;
 int ERANGE ;
 scalar_t__ WARN_ON (int) ;
 int drm_mode_get_hv_timing (int *,int *,int *) ;
 struct drm_rect drm_plane_state_dest (struct drm_plane_state*) ;
 struct drm_rect drm_plane_state_src (struct drm_plane_state*) ;
 int drm_rect_calc_hscale (struct drm_rect*,struct drm_rect*,int,int) ;
 int drm_rect_calc_vscale (struct drm_rect*,struct drm_rect*,int,int) ;
 int drm_rect_clip_scaled (struct drm_rect*,struct drm_rect*,struct drm_rect*) ;
 int drm_rect_debug_print (char*,struct drm_rect*,int) ;
 int drm_rect_equals (struct drm_rect*,struct drm_rect*) ;
 int drm_rect_rotate (struct drm_rect*,int,int,unsigned int) ;
 int drm_rect_rotate_inv (struct drm_rect*,int,int,unsigned int) ;

int drm_atomic_helper_check_plane_state(struct drm_plane_state *plane_state,
     const struct drm_crtc_state *crtc_state,
     int min_scale,
     int max_scale,
     bool can_position,
     bool can_update_disabled)
{
 struct drm_framebuffer *fb = plane_state->fb;
 struct drm_rect *src = &plane_state->src;
 struct drm_rect *dst = &plane_state->dst;
 unsigned int rotation = plane_state->rotation;
 struct drm_rect clip = {};
 int hscale, vscale;

 WARN_ON(plane_state->crtc && plane_state->crtc != crtc_state->crtc);

 *src = drm_plane_state_src(plane_state);
 *dst = drm_plane_state_dest(plane_state);

 if (!fb) {
  plane_state->visible = 0;
  return 0;
 }


 if (WARN_ON(!plane_state->crtc)) {
  plane_state->visible = 0;
  return 0;
 }

 if (!crtc_state->enable && !can_update_disabled) {
  DRM_DEBUG_KMS("Cannot update plane of a disabled CRTC.\n");
  return -EINVAL;
 }

 drm_rect_rotate(src, fb->width << 16, fb->height << 16, rotation);


 hscale = drm_rect_calc_hscale(src, dst, min_scale, max_scale);
 vscale = drm_rect_calc_vscale(src, dst, min_scale, max_scale);
 if (hscale < 0 || vscale < 0) {
  DRM_DEBUG_KMS("Invalid scaling of plane\n");
  drm_rect_debug_print("src: ", &plane_state->src, 1);
  drm_rect_debug_print("dst: ", &plane_state->dst, 0);
  return -ERANGE;
 }

 if (crtc_state->enable)
  drm_mode_get_hv_timing(&crtc_state->mode, &clip.x2, &clip.y2);

 plane_state->visible = drm_rect_clip_scaled(src, dst, &clip);

 drm_rect_rotate_inv(src, fb->width << 16, fb->height << 16, rotation);

 if (!plane_state->visible)







  return 0;

 if (!can_position && !drm_rect_equals(dst, &clip)) {
  DRM_DEBUG_KMS("Plane must cover entire CRTC\n");
  drm_rect_debug_print("dst: ", dst, 0);
  drm_rect_debug_print("clip: ", &clip, 0);
  return -EINVAL;
 }

 return 0;
}
