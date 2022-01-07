
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rcar_du_crtc {int vsp_pipe; TYPE_1__* vsp; } ;
struct TYPE_2__ {int vsp; } ;


 int vsp1_du_setup_lif (int ,int ,int *) ;

void rcar_du_vsp_disable(struct rcar_du_crtc *crtc)
{
 vsp1_du_setup_lif(crtc->vsp->vsp, crtc->vsp_pipe, ((void*)0));
}
