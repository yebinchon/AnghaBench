
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct rcar_du_group {scalar_t__ mmio_offset; int dev; } ;


 int rcar_du_write (int ,scalar_t__,scalar_t__) ;

void rcar_du_group_write(struct rcar_du_group *rgrp, u32 reg, u32 data)
{
 rcar_du_write(rgrp->dev, rgrp->mmio_offset + reg, data);
}
