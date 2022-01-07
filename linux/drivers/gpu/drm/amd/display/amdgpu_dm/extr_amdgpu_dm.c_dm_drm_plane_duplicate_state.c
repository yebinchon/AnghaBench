
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_plane_state {int dummy; } ;
struct drm_plane {int state; } ;
struct dm_plane_state {struct drm_plane_state base; scalar_t__ dc_state; } ;


 int GFP_KERNEL ;
 int __drm_atomic_helper_plane_duplicate_state (struct drm_plane*,struct drm_plane_state*) ;
 int dc_plane_state_retain (scalar_t__) ;
 struct dm_plane_state* kzalloc (int,int ) ;
 struct dm_plane_state* to_dm_plane_state (int ) ;

__attribute__((used)) static struct drm_plane_state *
dm_drm_plane_duplicate_state(struct drm_plane *plane)
{
 struct dm_plane_state *dm_plane_state, *old_dm_plane_state;

 old_dm_plane_state = to_dm_plane_state(plane->state);
 dm_plane_state = kzalloc(sizeof(*dm_plane_state), GFP_KERNEL);
 if (!dm_plane_state)
  return ((void*)0);

 __drm_atomic_helper_plane_duplicate_state(plane, &dm_plane_state->base);

 if (old_dm_plane_state->dc_state) {
  dm_plane_state->dc_state = old_dm_plane_state->dc_state;
  dc_plane_state_retain(dm_plane_state->dc_state);
 }

 return &dm_plane_state->base;
}
