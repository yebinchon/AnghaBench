
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; } ;
struct vmw_display_unit {TYPE_1__ connector; } ;
struct vmw_connector_state {int dummy; } ;
struct drm_plane_state {struct drm_crtc* crtc; int state; struct drm_framebuffer* fb; } ;
struct drm_plane {int dummy; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {int dummy; } ;


 int DRM_PLANE_HELPER_NO_SCALING ;
 struct drm_crtc_state* drm_atomic_get_new_crtc_state (int ,struct drm_crtc*) ;
 int drm_atomic_helper_check_plane_state (struct drm_plane_state*,struct drm_crtc_state*,int ,int ,int,int) ;
 struct vmw_connector_state* vmw_connector_state_to_vcs (int ) ;
 struct vmw_display_unit* vmw_crtc_to_du (struct drm_crtc*) ;

int vmw_du_primary_plane_atomic_check(struct drm_plane *plane,
          struct drm_plane_state *state)
{
 struct drm_crtc_state *crtc_state = ((void*)0);
 struct drm_framebuffer *new_fb = state->fb;
 int ret;

 if (state->crtc)
  crtc_state = drm_atomic_get_new_crtc_state(state->state, state->crtc);

 ret = drm_atomic_helper_check_plane_state(state, crtc_state,
        DRM_PLANE_HELPER_NO_SCALING,
        DRM_PLANE_HELPER_NO_SCALING,
        0, 1);

 if (!ret && new_fb) {
  struct drm_crtc *crtc = state->crtc;
  struct vmw_connector_state *vcs;
  struct vmw_display_unit *du = vmw_crtc_to_du(crtc);

  vcs = vmw_connector_state_to_vcs(du->connector.state);
 }


 return ret;
}
