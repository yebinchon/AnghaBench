
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rcar_du_group {int index; struct rcar_du_device* dev; } ;
struct rcar_du_device {struct rcar_du_crtc* crtcs; TYPE_1__* info; } ;
struct rcar_du_crtc {int dummy; } ;
struct TYPE_2__ {int channels_mask; } ;


 int BIT (int) ;
 int DSYSR ;
 int DSYSR_DEN ;
 int DSYSR_DRES ;
 int rcar_du_crtc_dsysr_clr_set (struct rcar_du_crtc*,int,int) ;
 int rcar_du_group_write (struct rcar_du_group*,int ,int) ;

__attribute__((used)) static void __rcar_du_group_start_stop(struct rcar_du_group *rgrp, bool start)
{
 struct rcar_du_device *rcdu = rgrp->dev;
 if (rcdu->info->channels_mask & BIT(rgrp->index * 2)) {
  struct rcar_du_crtc *rcrtc = &rgrp->dev->crtcs[rgrp->index * 2];

  rcar_du_crtc_dsysr_clr_set(rcrtc, DSYSR_DRES | DSYSR_DEN,
        start ? DSYSR_DEN : DSYSR_DRES);
 } else {
  rcar_du_group_write(rgrp, DSYSR,
        start ? DSYSR_DEN : DSYSR_DRES);
 }
}
