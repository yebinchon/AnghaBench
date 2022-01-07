
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_plane_state {int dummy; } ;
struct intel_plane_state {scalar_t__ flags; int * vma; struct drm_plane_state base; } ;
struct drm_plane {int state; } ;


 int GFP_KERNEL ;
 int __drm_atomic_helper_plane_duplicate_state (struct drm_plane*,struct drm_plane_state*) ;
 struct intel_plane_state* kmemdup (int ,int,int ) ;

struct drm_plane_state *
intel_plane_duplicate_state(struct drm_plane *plane)
{
 struct drm_plane_state *state;
 struct intel_plane_state *intel_state;

 intel_state = kmemdup(plane->state, sizeof(*intel_state), GFP_KERNEL);

 if (!intel_state)
  return ((void*)0);

 state = &intel_state->base;

 __drm_atomic_helper_plane_duplicate_state(plane, state);

 intel_state->vma = ((void*)0);
 intel_state->flags = 0;

 return state;
}
