
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_plane_state {int dummy; } ;
struct vc4_plane_state {int dlist_count; int dlist_size; struct drm_plane_state base; void* dlist; scalar_t__ dlist_initialized; int lbm; } ;
struct drm_plane {void* state; } ;


 int GFP_KERNEL ;
 scalar_t__ WARN_ON (int) ;
 int __drm_atomic_helper_plane_duplicate_state (struct drm_plane*,struct drm_plane_state*) ;
 int kfree (struct vc4_plane_state*) ;
 void* kmemdup (void*,int,int ) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static struct drm_plane_state *vc4_plane_duplicate_state(struct drm_plane *plane)
{
 struct vc4_plane_state *vc4_state;

 if (WARN_ON(!plane->state))
  return ((void*)0);

 vc4_state = kmemdup(plane->state, sizeof(*vc4_state), GFP_KERNEL);
 if (!vc4_state)
  return ((void*)0);

 memset(&vc4_state->lbm, 0, sizeof(vc4_state->lbm));
 vc4_state->dlist_initialized = 0;

 __drm_atomic_helper_plane_duplicate_state(plane, &vc4_state->base);

 if (vc4_state->dlist) {
  vc4_state->dlist = kmemdup(vc4_state->dlist,
        vc4_state->dlist_count * 4,
        GFP_KERNEL);
  if (!vc4_state->dlist) {
   kfree(vc4_state);
   return ((void*)0);
  }
  vc4_state->dlist_size = vc4_state->dlist_count;
 }

 return &vc4_state->base;
}
