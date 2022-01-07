
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_plane_state {int dummy; } ;
struct drm_plane {int dummy; } ;
struct dm_plane_state {scalar_t__ dc_state; } ;


 int dc_plane_state_release (scalar_t__) ;
 int drm_atomic_helper_plane_destroy_state (struct drm_plane*,struct drm_plane_state*) ;
 struct dm_plane_state* to_dm_plane_state (struct drm_plane_state*) ;

void dm_drm_plane_destroy_state(struct drm_plane *plane,
    struct drm_plane_state *state)
{
 struct dm_plane_state *dm_plane_state = to_dm_plane_state(state);

 if (dm_plane_state->dc_state)
  dc_plane_state_release(dm_plane_state->dc_state);

 drm_atomic_helper_plane_destroy_state(plane, state);
}
