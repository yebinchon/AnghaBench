
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef void* u32 ;
struct TYPE_2__ {int lane_count; int link_rate; scalar_t__ eq_loop; int * training_lane; int lt_state; } ;
struct analogix_dp_device {TYPE_1__ link_train; int aux; int dev; } ;


 int DP_ADJUST_REQUEST_LANE0_1 ;
 int DP_LANE0_1_STATUS ;
 int DP_LANE_ALIGN_STATUS_UPDATED ;
 int DP_TRAINING_LANE0_SET ;
 int EIO ;
 int FINISHED ;
 scalar_t__ MAX_EQ_LOOP ;
 int analogix_dp_channel_eq_ok (int *,int ,int) ;
 scalar_t__ analogix_dp_clock_recovery_ok (int *,int) ;
 int analogix_dp_get_adjust_training_lane (struct analogix_dp_device*,int *) ;
 int analogix_dp_get_lane_count (struct analogix_dp_device*,void**) ;
 int analogix_dp_get_link_bandwidth (struct analogix_dp_device*,void**) ;
 int analogix_dp_reduce_link_rate (struct analogix_dp_device*) ;
 int analogix_dp_set_lane_link_training (struct analogix_dp_device*,int ,int) ;
 int analogix_dp_training_pattern_dis (struct analogix_dp_device*) ;
 int dev_dbg (int ,char*,...) ;
 int dev_err (int ,char*) ;
 int drm_dp_dpcd_read (int *,int ,int *,int) ;
 int drm_dp_dpcd_readb (int *,int ,int *) ;
 int drm_dp_dpcd_write (int *,int ,int *,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int analogix_dp_process_equalizer_training(struct analogix_dp_device *dp)
{
 int lane, lane_count, retval;
 u32 reg;
 u8 link_align, link_status[2], adjust_request[2];

 usleep_range(400, 401);

 lane_count = dp->link_train.lane_count;

 retval = drm_dp_dpcd_read(&dp->aux, DP_LANE0_1_STATUS, link_status, 2);
 if (retval < 0)
  return retval;

 if (analogix_dp_clock_recovery_ok(link_status, lane_count)) {
  analogix_dp_reduce_link_rate(dp);
  return -EIO;
 }

 retval = drm_dp_dpcd_read(&dp->aux, DP_ADJUST_REQUEST_LANE0_1,
      adjust_request, 2);
 if (retval < 0)
  return retval;

 retval = drm_dp_dpcd_readb(&dp->aux, DP_LANE_ALIGN_STATUS_UPDATED,
       &link_align);
 if (retval < 0)
  return retval;

 analogix_dp_get_adjust_training_lane(dp, adjust_request);

 if (!analogix_dp_channel_eq_ok(link_status, link_align, lane_count)) {

  retval = analogix_dp_training_pattern_dis(dp);
  if (retval < 0)
   return retval;

  dev_dbg(dp->dev, "Link Training success!\n");
  analogix_dp_get_link_bandwidth(dp, &reg);
  dp->link_train.link_rate = reg;
  dev_dbg(dp->dev, "final bandwidth = %.2x\n",
   dp->link_train.link_rate);

  analogix_dp_get_lane_count(dp, &reg);
  dp->link_train.lane_count = reg;
  dev_dbg(dp->dev, "final lane count = %.2x\n",
   dp->link_train.lane_count);

  dp->link_train.lt_state = FINISHED;

  return 0;
 }


 dp->link_train.eq_loop++;

 if (dp->link_train.eq_loop > MAX_EQ_LOOP) {
  dev_err(dp->dev, "EQ Max loop\n");
  analogix_dp_reduce_link_rate(dp);
  return -EIO;
 }

 for (lane = 0; lane < lane_count; lane++)
  analogix_dp_set_lane_link_training(dp,
   dp->link_train.training_lane[lane], lane);

 retval = drm_dp_dpcd_write(&dp->aux, DP_TRAINING_LANE0_SET,
       dp->link_train.training_lane, lane_count);
 if (retval < 0)
  return retval;

 return 0;
}
