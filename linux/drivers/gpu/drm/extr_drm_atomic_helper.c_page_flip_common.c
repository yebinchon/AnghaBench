
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct drm_plane_state {int async_flip; int active; struct drm_pending_vblank_event* event; } ;
struct drm_plane {int dummy; } ;
struct drm_pending_vblank_event {int dummy; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_crtc_state {int async_flip; int active; struct drm_pending_vblank_event* event; } ;
struct TYPE_2__ {int id; } ;
struct drm_crtc {int name; TYPE_1__ base; struct drm_plane* primary; } ;
struct drm_atomic_state {int allow_modeset; } ;


 int DRM_DEBUG_ATOMIC (char*,int ,int ) ;
 int DRM_MODE_PAGE_FLIP_ASYNC ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct drm_plane_state*) ;
 int PTR_ERR (struct drm_plane_state*) ;
 struct drm_plane_state* drm_atomic_get_crtc_state (struct drm_atomic_state*,struct drm_crtc*) ;
 struct drm_plane_state* drm_atomic_get_plane_state (struct drm_atomic_state*,struct drm_plane*) ;
 int drm_atomic_set_crtc_for_plane (struct drm_plane_state*,struct drm_crtc*) ;
 int drm_atomic_set_fb_for_plane (struct drm_plane_state*,struct drm_framebuffer*) ;

__attribute__((used)) static int page_flip_common(struct drm_atomic_state *state,
       struct drm_crtc *crtc,
       struct drm_framebuffer *fb,
       struct drm_pending_vblank_event *event,
       uint32_t flags)
{
 struct drm_plane *plane = crtc->primary;
 struct drm_plane_state *plane_state;
 struct drm_crtc_state *crtc_state;
 int ret = 0;

 crtc_state = drm_atomic_get_crtc_state(state, crtc);
 if (IS_ERR(crtc_state))
  return PTR_ERR(crtc_state);

 crtc_state->event = event;
 crtc_state->async_flip = flags & DRM_MODE_PAGE_FLIP_ASYNC;

 plane_state = drm_atomic_get_plane_state(state, plane);
 if (IS_ERR(plane_state))
  return PTR_ERR(plane_state);

 ret = drm_atomic_set_crtc_for_plane(plane_state, crtc);
 if (ret != 0)
  return ret;
 drm_atomic_set_fb_for_plane(plane_state, fb);


 state->allow_modeset = 0;
 if (!crtc_state->active) {
  DRM_DEBUG_ATOMIC("[CRTC:%d:%s] disabled, rejecting legacy flip\n",
     crtc->base.id, crtc->name);
  return -EINVAL;
 }

 return ret;
}
