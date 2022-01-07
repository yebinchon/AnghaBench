
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int member_0; } ;
struct vsp1_du_atomic_pipe_config {int writeback; int crc; TYPE_1__ member_0; } ;
struct rcar_du_crtc_state {int crc; } ;
struct TYPE_5__ {int state; } ;
struct rcar_du_crtc {int vsp_pipe; TYPE_3__* vsp; TYPE_2__ crtc; } ;
struct TYPE_6__ {int vsp; } ;


 int rcar_du_writeback_setup (struct rcar_du_crtc*,int *) ;
 struct rcar_du_crtc_state* to_rcar_crtc_state (int ) ;
 int vsp1_du_atomic_flush (int ,int ,struct vsp1_du_atomic_pipe_config*) ;

void rcar_du_vsp_atomic_flush(struct rcar_du_crtc *crtc)
{
 struct vsp1_du_atomic_pipe_config cfg = { { 0, } };
 struct rcar_du_crtc_state *state;

 state = to_rcar_crtc_state(crtc->crtc.state);
 cfg.crc = state->crc;

 rcar_du_writeback_setup(crtc, &cfg.writeback);

 vsp1_du_atomic_flush(crtc->vsp->vsp, crtc->vsp_pipe, &cfg);
}
