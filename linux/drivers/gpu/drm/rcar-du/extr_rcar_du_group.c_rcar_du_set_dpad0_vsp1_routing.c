
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rcar_du_group {int dummy; } ;
struct rcar_du_device {struct rcar_du_crtc* crtcs; struct rcar_du_group* groups; int num_crtcs; TYPE_1__* info; } ;
struct rcar_du_crtc {int clock; } ;
struct TYPE_2__ {int gen; } ;


 int DIV_ROUND_UP (int ,int) ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int rcar_du_group_setup_defr8 (struct rcar_du_group*) ;

int rcar_du_set_dpad0_vsp1_routing(struct rcar_du_device *rcdu)
{
 struct rcar_du_group *rgrp;
 struct rcar_du_crtc *crtc;
 unsigned int index;
 int ret;

 if (rcdu->info->gen < 2)
  return 0;
 index = rcdu->info->gen < 3 ? 0 : DIV_ROUND_UP(rcdu->num_crtcs, 2) - 1;
 rgrp = &rcdu->groups[index];
 crtc = &rcdu->crtcs[index * 2];

 ret = clk_prepare_enable(crtc->clock);
 if (ret < 0)
  return ret;

 rcar_du_group_setup_defr8(rgrp);

 clk_disable_unprepare(crtc->clock);

 return 0;
}
