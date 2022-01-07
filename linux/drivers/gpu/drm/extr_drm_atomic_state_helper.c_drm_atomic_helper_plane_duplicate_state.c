
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_plane_state {int dummy; } ;
struct drm_plane {int state; } ;


 int GFP_KERNEL ;
 scalar_t__ WARN_ON (int) ;
 int __drm_atomic_helper_plane_duplicate_state (struct drm_plane*,struct drm_plane_state*) ;
 struct drm_plane_state* kmalloc (int,int ) ;

struct drm_plane_state *
drm_atomic_helper_plane_duplicate_state(struct drm_plane *plane)
{
 struct drm_plane_state *state;

 if (WARN_ON(!plane->state))
  return ((void*)0);

 state = kmalloc(sizeof(*state), GFP_KERNEL);
 if (state)
  __drm_atomic_helper_plane_duplicate_state(plane, state);

 return state;
}
