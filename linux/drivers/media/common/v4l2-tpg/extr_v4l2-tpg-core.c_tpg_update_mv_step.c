
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpg_data {int mv_hor_mode; int mv_hor_step; int src_width; int mv_vert_mode; int mv_vert_step; int src_height; scalar_t__ hflip; } ;
void tpg_update_mv_step(struct tpg_data *tpg)
{
 int factor = tpg->mv_hor_mode > 131 ? -1 : 1;

 if (tpg->hflip)
  factor = -factor;
 switch (tpg->mv_hor_mode) {
 case 133:
 case 129:
  tpg->mv_hor_step = ((tpg->src_width + 319) / 320) * 4;
  break;
 case 134:
 case 130:
  tpg->mv_hor_step = ((tpg->src_width + 639) / 640) * 4;
  break;
 case 132:
 case 128:
  tpg->mv_hor_step = 2;
  break;
 case 131:
  tpg->mv_hor_step = 0;
  break;
 }
 if (factor < 0)
  tpg->mv_hor_step = tpg->src_width - tpg->mv_hor_step;

 factor = tpg->mv_vert_mode > 131 ? -1 : 1;
 switch (tpg->mv_vert_mode) {
 case 133:
 case 129:
  tpg->mv_vert_step = ((tpg->src_width + 319) / 320) * 4;
  break;
 case 134:
 case 130:
  tpg->mv_vert_step = ((tpg->src_width + 639) / 640) * 4;
  break;
 case 132:
 case 128:
  tpg->mv_vert_step = 1;
  break;
 case 131:
  tpg->mv_vert_step = 0;
  break;
 }
 if (factor < 0)
  tpg->mv_vert_step = tpg->src_height - tpg->mv_vert_step;
}
