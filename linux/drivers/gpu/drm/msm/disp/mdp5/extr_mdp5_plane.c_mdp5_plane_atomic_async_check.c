
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mdp5_plane_state {int hwpipe; } ;
struct drm_plane_state {scalar_t__ crtc; scalar_t__ src_w; scalar_t__ src_h; scalar_t__ crtc_w; scalar_t__ crtc_h; scalar_t__ fb; scalar_t__ visible; int state; } ;
struct drm_plane {TYPE_1__* state; } ;
struct drm_crtc_state {int active; } ;
struct TYPE_2__ {scalar_t__ crtc; scalar_t__ src_w; scalar_t__ src_h; scalar_t__ crtc_w; scalar_t__ crtc_h; scalar_t__ fb; scalar_t__ visible; } ;


 int EINVAL ;
 int FRAC_16_16 (int,int) ;
 scalar_t__ WARN_ON (int) ;
 struct drm_crtc_state* drm_atomic_get_existing_crtc_state (int ,scalar_t__) ;
 int drm_atomic_helper_check_plane_state (struct drm_plane_state*,struct drm_crtc_state*,int,int,int,int) ;
 struct mdp5_plane_state* to_mdp5_plane_state (struct drm_plane_state*) ;

__attribute__((used)) static int mdp5_plane_atomic_async_check(struct drm_plane *plane,
      struct drm_plane_state *state)
{
 struct mdp5_plane_state *mdp5_state = to_mdp5_plane_state(state);
 struct drm_crtc_state *crtc_state;
 int min_scale, max_scale;
 int ret;

 crtc_state = drm_atomic_get_existing_crtc_state(state->state,
       state->crtc);
 if (WARN_ON(!crtc_state))
  return -EINVAL;

 if (!crtc_state->active)
  return -EINVAL;

 mdp5_state = to_mdp5_plane_state(state);


 if (!mdp5_state->hwpipe)
  return -EINVAL;


 if (plane->state->crtc != state->crtc ||
     plane->state->src_w != state->src_w ||
     plane->state->src_h != state->src_h ||
     plane->state->crtc_w != state->crtc_w ||
     plane->state->crtc_h != state->crtc_h ||
     !plane->state->fb ||
     plane->state->fb != state->fb)
  return -EINVAL;

 min_scale = FRAC_16_16(1, 8);
 max_scale = FRAC_16_16(8, 1);

 ret = drm_atomic_helper_check_plane_state(state, crtc_state,
        min_scale, max_scale,
        1, 1);
 if (ret)
  return ret;
 if (state->visible != plane->state->visible)
  return -EINVAL;

 return 0;
}
