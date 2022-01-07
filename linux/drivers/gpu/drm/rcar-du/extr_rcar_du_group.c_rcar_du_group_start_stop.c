
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_du_group {scalar_t__ used_crtcs; } ;


 int __rcar_du_group_start_stop (struct rcar_du_group*,int) ;

void rcar_du_group_start_stop(struct rcar_du_group *rgrp, bool start)
{
 if (start) {
  if (rgrp->used_crtcs++ != 0)
   __rcar_du_group_start_stop(rgrp, 0);
  __rcar_du_group_start_stop(rgrp, 1);
 } else {
  if (--rgrp->used_crtcs == 0)
   __rcar_du_group_start_stop(rgrp, 0);
 }
}
