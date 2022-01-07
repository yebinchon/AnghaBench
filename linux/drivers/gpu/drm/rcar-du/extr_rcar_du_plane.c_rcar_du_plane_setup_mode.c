
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int alpha; } ;
struct rcar_du_plane_state {int colorkey; TYPE_2__* format; TYPE_1__ state; } ;
struct rcar_du_group {int dummy; } ;
struct TYPE_4__ {int fourcc; int pnmr; } ;







 int DRM_FORMAT_YUYV ;
 int PnALPHAR ;
 int PnALPHAR_ABIT_0 ;
 int PnALPHAR_ABIT_X ;
 int PnMR ;
 int PnMR_BM_MD ;
 int PnMR_SPIM_TP_OFF ;
 int PnMR_YCDF_YUYV ;
 int PnTC2R ;
 int PnTC3R ;
 int PnTC3R_CODE ;
 int RCAR_DU_COLORKEY_MASK ;
 int RCAR_DU_COLORKEY_NONE ;
 int rcar_du_plane_write (struct rcar_du_group*,unsigned int,int ,int) ;

__attribute__((used)) static void rcar_du_plane_setup_mode(struct rcar_du_group *rgrp,
         unsigned int index,
         const struct rcar_du_plane_state *state)
{
 u32 colorkey;
 u32 pnmr;
 if (state->format->fourcc != 129)
  rcar_du_plane_write(rgrp, index, PnALPHAR, PnALPHAR_ABIT_0);
 else
  rcar_du_plane_write(rgrp, index, PnALPHAR,
        PnALPHAR_ABIT_X | state->state.alpha >> 8);

 pnmr = PnMR_BM_MD | state->format->pnmr;






 if ((state->colorkey & RCAR_DU_COLORKEY_MASK) == RCAR_DU_COLORKEY_NONE)
  pnmr |= PnMR_SPIM_TP_OFF;


 if (state->format->fourcc == DRM_FORMAT_YUYV)
  pnmr |= PnMR_YCDF_YUYV;

 rcar_du_plane_write(rgrp, index, PnMR, pnmr);

 switch (state->format->fourcc) {
 case 130:
  colorkey = ((state->colorkey & 0xf80000) >> 8)
    | ((state->colorkey & 0x00fc00) >> 5)
    | ((state->colorkey & 0x0000f8) >> 3);
  rcar_du_plane_write(rgrp, index, PnTC2R, colorkey);
  break;

 case 132:
 case 129:
  colorkey = ((state->colorkey & 0xf80000) >> 9)
    | ((state->colorkey & 0x00f800) >> 6)
    | ((state->colorkey & 0x0000f8) >> 3);
  rcar_du_plane_write(rgrp, index, PnTC2R, colorkey);
  break;

 case 128:
 case 131:
  rcar_du_plane_write(rgrp, index, PnTC3R,
        PnTC3R_CODE | (state->colorkey & 0xffffff));
  break;
 }
}
