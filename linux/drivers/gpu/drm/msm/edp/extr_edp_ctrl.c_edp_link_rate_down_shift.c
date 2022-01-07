
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int num_lanes; } ;
struct edp_ctrl {int link_rate; int lane_cnt; int color_depth; int pixel_rate; TYPE_1__ dp_link; } ;


 int DBG (char*,int,int,...) ;
 int DP_LINK_BW_1_62 ;
 int EDP_LINK_BW_MAX ;
 int EINVAL ;

__attribute__((used)) static int edp_link_rate_down_shift(struct edp_ctrl *ctrl)
{
 u32 prate, lrate, bpp;
 u8 rate, lane, max_lane;
 int changed = 0;

 rate = ctrl->link_rate;
 lane = ctrl->lane_cnt;
 max_lane = ctrl->dp_link.num_lanes;

 bpp = ctrl->color_depth * 3;
 prate = ctrl->pixel_rate;
 prate *= bpp;
 prate /= 8;

 if (rate > DP_LINK_BW_1_62 && rate <= EDP_LINK_BW_MAX) {
  rate -= 4;
  changed++;
 }

 if (changed) {
  if (lane >= 1 && lane < max_lane)
   lane <<= 1;

  lrate = 270000;
  lrate *= rate;
  lrate /= 10;
  lrate *= lane;

  DBG("new lrate=%u prate=%u(kHz) rate=%d lane=%d p=%u b=%d",
   lrate, prate, rate, lane,
   ctrl->pixel_rate,
   bpp);

  if (lrate > prate) {
   ctrl->link_rate = rate;
   ctrl->lane_cnt = lane;
   DBG("new rate=%d %d", rate, lane);
   return 0;
  }
 }

 return -EINVAL;
}
