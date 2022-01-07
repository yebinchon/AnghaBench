
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rcar_du_group {int index; int num_crtcs; struct rcar_du_device* dev; } ;
struct rcar_du_device {unsigned int num_crtcs; TYPE_1__* info; struct rcar_du_crtc* crtcs; } ;
struct rcar_du_crtc {int index; } ;
struct TYPE_2__ {int gen; int lvds_clk_mask; } ;


 int BIT (int ) ;
 int DIDSR ;
 int DIDSR_CODE ;
 int DIDSR_LCDS_DCLKIN (unsigned int) ;
 int DIDSR_LCDS_LVDS0 (unsigned int) ;
 int DIDSR_PDCS_CLK (unsigned int,int ) ;
 int rcar_du_group_write (struct rcar_du_group*,int ,int) ;

__attribute__((used)) static void rcar_du_group_setup_didsr(struct rcar_du_group *rgrp)
{
 struct rcar_du_device *rcdu = rgrp->dev;
 struct rcar_du_crtc *rcrtc;
 unsigned int num_crtcs = 0;
 unsigned int i;
 u32 didsr;
 if (rcdu->info->gen < 3 && rgrp->index == 0) {




  rcrtc = rcdu->crtcs;
  num_crtcs = rcdu->num_crtcs;
 } else if (rcdu->info->gen == 3 && rgrp->num_crtcs > 1) {




  rcrtc = &rcdu->crtcs[rgrp->index * 2];
  num_crtcs = rgrp->num_crtcs;
 }

 if (!num_crtcs)
  return;

 didsr = DIDSR_CODE;
 for (i = 0; i < num_crtcs; ++i, ++rcrtc) {
  if (rcdu->info->lvds_clk_mask & BIT(rcrtc->index))
   didsr |= DIDSR_LCDS_LVDS0(i)
         | DIDSR_PDCS_CLK(i, 0);
  else
   didsr |= DIDSR_LCDS_DCLKIN(i)
         | DIDSR_PDCS_CLK(i, 0);
 }

 rcar_du_group_write(rgrp, DIDSR, didsr);
}
