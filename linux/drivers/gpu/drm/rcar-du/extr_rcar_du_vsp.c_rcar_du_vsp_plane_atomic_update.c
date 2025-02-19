
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rcar_du_vsp_plane {int index; TYPE_2__* vsp; } ;
struct rcar_du_crtc {int vsp_pipe; } ;
struct drm_plane_state {int crtc; } ;
struct drm_plane {TYPE_1__* state; } ;
struct TYPE_4__ {int vsp; } ;
struct TYPE_3__ {scalar_t__ visible; } ;


 int rcar_du_vsp_plane_setup (struct rcar_du_vsp_plane*) ;
 struct rcar_du_crtc* to_rcar_crtc (int ) ;
 struct rcar_du_vsp_plane* to_rcar_vsp_plane (struct drm_plane*) ;
 int vsp1_du_atomic_update (int ,int ,int ,int *) ;

__attribute__((used)) static void rcar_du_vsp_plane_atomic_update(struct drm_plane *plane,
     struct drm_plane_state *old_state)
{
 struct rcar_du_vsp_plane *rplane = to_rcar_vsp_plane(plane);
 struct rcar_du_crtc *crtc = to_rcar_crtc(old_state->crtc);

 if (plane->state->visible)
  rcar_du_vsp_plane_setup(rplane);
 else
  vsp1_du_atomic_update(rplane->vsp->vsp, crtc->vsp_pipe,
          rplane->index, ((void*)0));
}
