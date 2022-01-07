
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct rcar_du_group {scalar_t__ mmio_offset; int dev; } ;


 unsigned int PLANE_OFF ;
 int rcar_du_write (int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static void rcar_du_plane_write(struct rcar_du_group *rgrp,
    unsigned int index, u32 reg, u32 data)
{
 rcar_du_write(rgrp->dev, rgrp->mmio_offset + index * PLANE_OFF + reg,
        data);
}
