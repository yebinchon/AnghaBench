
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int num_lanes; int rate; } ;
struct edp_ctrl {int pixel_rate; int color_depth; int link_rate; int lane_cnt; TYPE_1__ dp_link; } ;


 int DBG (char*,int,int) ;
 int drm_dp_link_rate_to_bw_code (int ) ;

__attribute__((used)) static void edp_fill_link_cfg(struct edp_ctrl *ctrl)
{
 u32 prate;
 u32 lrate;
 u32 bpp;
 u8 max_lane = ctrl->dp_link.num_lanes;
 u8 lane;

 prate = ctrl->pixel_rate;
 bpp = ctrl->color_depth * 3;





 ctrl->link_rate = drm_dp_link_rate_to_bw_code(ctrl->dp_link.rate);

 prate *= bpp;
 prate /= 8;

 lrate = 270000;
 lrate *= ctrl->link_rate;
 lrate /= 10;

 for (lane = 1; lane <= max_lane; lane <<= 1) {
  if (lrate >= prate)
   break;
  lrate <<= 1;
 }

 ctrl->lane_cnt = lane;
 DBG("rate=%d lane=%d", ctrl->link_rate, ctrl->lane_cnt);
}
