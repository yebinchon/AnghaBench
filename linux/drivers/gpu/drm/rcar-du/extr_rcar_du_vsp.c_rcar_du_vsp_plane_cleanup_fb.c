
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rcar_du_vsp_plane_state {int sg_tables; } ;
struct rcar_du_vsp {int dummy; } ;
struct drm_plane_state {int fb; int visible; } ;
struct drm_plane {int dummy; } ;
struct TYPE_2__ {struct rcar_du_vsp* vsp; } ;


 int rcar_du_vsp_unmap_fb (struct rcar_du_vsp*,int ,int ) ;
 TYPE_1__* to_rcar_vsp_plane (struct drm_plane*) ;
 struct rcar_du_vsp_plane_state* to_rcar_vsp_plane_state (struct drm_plane_state*) ;

__attribute__((used)) static void rcar_du_vsp_plane_cleanup_fb(struct drm_plane *plane,
      struct drm_plane_state *state)
{
 struct rcar_du_vsp_plane_state *rstate = to_rcar_vsp_plane_state(state);
 struct rcar_du_vsp *vsp = to_rcar_vsp_plane(plane)->vsp;

 if (!state->visible)
  return;

 rcar_du_vsp_unmap_fb(vsp, state->fb, rstate->sg_tables);
}
