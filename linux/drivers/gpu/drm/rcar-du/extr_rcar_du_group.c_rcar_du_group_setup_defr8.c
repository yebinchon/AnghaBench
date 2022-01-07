
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rcar_du_group {int index; struct rcar_du_device* dev; } ;
struct rcar_du_device {int dpad0_source; int vspd1_sink; TYPE_1__* info; } ;
struct TYPE_2__ {int gen; } ;


 int DEFR8 ;
 int DEFR8_CODE ;
 int DEFR8_DEFE8 ;
 int DEFR8_DRGBS_DU (int) ;
 int DEFR8_VSCS ;
 int rcar_du_group_write (struct rcar_du_group*,int ,int ) ;

__attribute__((used)) static void rcar_du_group_setup_defr8(struct rcar_du_group *rgrp)
{
 struct rcar_du_device *rcdu = rgrp->dev;
 u32 defr8 = DEFR8_CODE;

 if (rcdu->info->gen < 3) {
  defr8 |= DEFR8_DEFE8;






  if (rgrp->index == 0) {
   defr8 |= DEFR8_DRGBS_DU(rcdu->dpad0_source);
   if (rgrp->dev->vspd1_sink == 2)
    defr8 |= DEFR8_VSCS;
  }
 } else {





  if (rgrp->index == rcdu->dpad0_source / 2)
   defr8 |= DEFR8_DRGBS_DU(rcdu->dpad0_source);
 }

 rcar_du_group_write(rgrp, DEFR8, defr8);
}
