
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_plane_state {int dummy; } ;
struct drm_plane {int state; } ;
struct TYPE_2__ {struct drm_plane_state base; } ;
struct armada_overlay_state {TYPE_1__ base; } ;


 int GFP_KERNEL ;
 scalar_t__ WARN_ON (int) ;
 int __drm_atomic_helper_plane_duplicate_state (struct drm_plane*,struct drm_plane_state*) ;
 struct armada_overlay_state* kmemdup (int ,int,int ) ;

struct drm_plane_state *
armada_overlay_duplicate_state(struct drm_plane *plane)
{
 struct armada_overlay_state *state;

 if (WARN_ON(!plane->state))
  return ((void*)0);

 state = kmemdup(plane->state, sizeof(*state), GFP_KERNEL);
 if (state)
  __drm_atomic_helper_plane_duplicate_state(plane,
         &state->base.base);
 return &state->base.base;
}
