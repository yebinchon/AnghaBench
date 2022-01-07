
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_du_group {int use_count; } ;



void rcar_du_group_put(struct rcar_du_group *rgrp)
{
 --rgrp->use_count;
}
