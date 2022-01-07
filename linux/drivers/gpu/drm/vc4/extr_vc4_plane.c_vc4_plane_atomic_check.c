
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc4_plane_state {scalar_t__ dlist_count; } ;
struct drm_plane_state {int dummy; } ;
struct drm_plane {int dummy; } ;


 int plane_enabled (struct drm_plane_state*) ;
 struct vc4_plane_state* to_vc4_plane_state (struct drm_plane_state*) ;
 int vc4_plane_allocate_lbm (struct drm_plane_state*) ;
 int vc4_plane_mode_set (struct drm_plane*,struct drm_plane_state*) ;

__attribute__((used)) static int vc4_plane_atomic_check(struct drm_plane *plane,
      struct drm_plane_state *state)
{
 struct vc4_plane_state *vc4_state = to_vc4_plane_state(state);
 int ret;

 vc4_state->dlist_count = 0;

 if (!plane_enabled(state))
  return 0;

 ret = vc4_plane_mode_set(plane, state);
 if (ret)
  return ret;

 return vc4_plane_allocate_lbm(state);
}
