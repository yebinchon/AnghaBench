
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_du_group {scalar_t__ use_count; } ;


 int rcar_du_group_setup (struct rcar_du_group*) ;

int rcar_du_group_get(struct rcar_du_group *rgrp)
{
 if (rgrp->use_count)
  goto done;

 rcar_du_group_setup(rgrp);

done:
 rgrp->use_count++;
 return 0;
}
