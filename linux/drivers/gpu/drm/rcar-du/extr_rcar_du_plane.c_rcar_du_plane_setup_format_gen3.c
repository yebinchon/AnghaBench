
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rcar_du_plane_state {TYPE_1__* format; } ;
struct rcar_du_group {int dummy; } ;
struct TYPE_2__ {int pnmr; int edf; } ;


 int PnDDCR4 ;
 int PnDDCR4_CODE ;
 int PnMR ;
 int PnMR_SPIM_TP_OFF ;
 int rcar_du_plane_write (struct rcar_du_group*,unsigned int,int ,int) ;

__attribute__((used)) static void rcar_du_plane_setup_format_gen3(struct rcar_du_group *rgrp,
         unsigned int index,
         const struct rcar_du_plane_state *state)
{
 rcar_du_plane_write(rgrp, index, PnMR,
       PnMR_SPIM_TP_OFF | state->format->pnmr);

 rcar_du_plane_write(rgrp, index, PnDDCR4,
       state->format->edf | PnDDCR4_CODE);
}
