
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_rect {int x1; int y1; } ;
struct TYPE_3__ {struct drm_rect dst; } ;
struct rcar_du_plane_state {TYPE_1__ state; } ;
struct rcar_du_group {struct rcar_du_device* dev; } ;
struct rcar_du_device {TYPE_2__* info; } ;
struct TYPE_4__ {int gen; } ;


 int PnBTR ;
 int PnDPXR ;
 int PnDPYR ;
 int PnDSXR ;
 int PnDSYR ;
 int PnMLR ;
 int PnWAMWR ;
 int PnWASPR ;
 int drm_rect_height (struct drm_rect const*) ;
 int drm_rect_width (struct drm_rect const*) ;
 int rcar_du_plane_setup_format_gen2 (struct rcar_du_group*,unsigned int,struct rcar_du_plane_state const*) ;
 int rcar_du_plane_setup_format_gen3 (struct rcar_du_group*,unsigned int,struct rcar_du_plane_state const*) ;
 int rcar_du_plane_write (struct rcar_du_group*,unsigned int,int ,int) ;

__attribute__((used)) static void rcar_du_plane_setup_format(struct rcar_du_group *rgrp,
           unsigned int index,
           const struct rcar_du_plane_state *state)
{
 struct rcar_du_device *rcdu = rgrp->dev;
 const struct drm_rect *dst = &state->state.dst;

 if (rcdu->info->gen < 3)
  rcar_du_plane_setup_format_gen2(rgrp, index, state);
 else
  rcar_du_plane_setup_format_gen3(rgrp, index, state);


 rcar_du_plane_write(rgrp, index, PnDSXR, drm_rect_width(dst));
 rcar_du_plane_write(rgrp, index, PnDSYR, drm_rect_height(dst));
 rcar_du_plane_write(rgrp, index, PnDPXR, dst->x1);
 rcar_du_plane_write(rgrp, index, PnDPYR, dst->y1);

 if (rcdu->info->gen < 3) {

  rcar_du_plane_write(rgrp, index, PnWASPR, 0);
  rcar_du_plane_write(rgrp, index, PnWAMWR, 4095);
  rcar_du_plane_write(rgrp, index, PnBTR, 0);
  rcar_du_plane_write(rgrp, index, PnMLR, 0);
 }
}
