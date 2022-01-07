
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct rcar_du_group {scalar_t__ mmio_offset; int dev; } ;


 scalar_t__ rcar_du_read (int ,scalar_t__) ;

u32 rcar_du_group_read(struct rcar_du_group *rgrp, u32 reg)
{
 return rcar_du_read(rgrp->dev, rgrp->mmio_offset + reg);
}
