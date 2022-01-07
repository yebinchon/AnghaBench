
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_du_group {int need_restart; } ;


 int __rcar_du_group_start_stop (struct rcar_du_group*,int) ;

void rcar_du_group_restart(struct rcar_du_group *rgrp)
{
 rgrp->need_restart = 0;

 __rcar_du_group_start_stop(rgrp, 0);
 __rcar_du_group_start_stop(rgrp, 1);
}
