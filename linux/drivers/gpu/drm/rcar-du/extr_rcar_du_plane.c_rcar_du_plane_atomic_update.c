
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rcar_du_plane_state {scalar_t__ source; } ;
struct rcar_du_plane {TYPE_1__* group; } ;
struct drm_plane_state {int visible; } ;
struct drm_plane {struct drm_plane_state* state; } ;
struct TYPE_2__ {int need_restart; } ;


 scalar_t__ RCAR_DU_PLANE_MEMORY ;
 int rcar_du_plane_setup (struct rcar_du_plane*) ;
 struct rcar_du_plane* to_rcar_plane (struct drm_plane*) ;
 struct rcar_du_plane_state* to_rcar_plane_state (struct drm_plane_state*) ;

__attribute__((used)) static void rcar_du_plane_atomic_update(struct drm_plane *plane,
     struct drm_plane_state *old_state)
{
 struct rcar_du_plane *rplane = to_rcar_plane(plane);
 struct rcar_du_plane_state *old_rstate;
 struct rcar_du_plane_state *new_rstate;

 if (!plane->state->visible)
  return;

 rcar_du_plane_setup(rplane);
 old_rstate = to_rcar_plane_state(old_state);
 new_rstate = to_rcar_plane_state(plane->state);

 if ((old_rstate->source == RCAR_DU_PLANE_MEMORY) !=
     (new_rstate->source == RCAR_DU_PLANE_MEMORY))
  rplane->group->need_restart = 1;
}
