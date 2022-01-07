
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_2__ {int lane_count; scalar_t__* cr_loop; int * training_lane; int lt_state; } ;
struct analogix_dp_device {TYPE_1__ link_train; int aux; int dev; } ;


 scalar_t__ DPCD_PRE_EMPHASIS_GET (scalar_t__) ;
 scalar_t__ DPCD_VOLTAGE_SWING_GET (scalar_t__) ;
 int DP_ADJUST_REQUEST_LANE0_1 ;
 int DP_LANE0_1_STATUS ;
 int DP_LINK_SCRAMBLING_DISABLE ;
 int DP_TRAINING_LANE0_SET ;
 int DP_TRAINING_PATTERN_2 ;
 int DP_TRAINING_PATTERN_SET ;
 int EIO ;
 int EQUALIZER_TRAINING ;
 scalar_t__ MAX_CR_LOOP ;
 scalar_t__ PRE_EMPHASIS_LEVEL_3 ;
 int TRAINING_PTN2 ;
 scalar_t__ VOLTAGE_LEVEL_3 ;
 scalar_t__ analogix_dp_clock_recovery_ok (scalar_t__*,int) ;
 scalar_t__ analogix_dp_get_adjust_request_pre_emphasis (scalar_t__*,int) ;
 scalar_t__ analogix_dp_get_adjust_request_voltage (scalar_t__*,int) ;
 int analogix_dp_get_adjust_training_lane (struct analogix_dp_device*,scalar_t__*) ;
 scalar_t__ analogix_dp_get_lane_link_training (struct analogix_dp_device*,int) ;
 int analogix_dp_reduce_link_rate (struct analogix_dp_device*) ;
 int analogix_dp_set_lane_link_training (struct analogix_dp_device*,int ,int) ;
 int analogix_dp_set_training_pattern (struct analogix_dp_device*,int ) ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*,scalar_t__,scalar_t__,scalar_t__) ;
 int drm_dp_dpcd_read (int *,int ,scalar_t__*,int) ;
 int drm_dp_dpcd_write (int *,int ,int *,int) ;
 int drm_dp_dpcd_writeb (int *,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int analogix_dp_process_clock_recovery(struct analogix_dp_device *dp)
{
 int lane, lane_count, retval;
 u8 voltage_swing, pre_emphasis, training_lane;
 u8 link_status[2], adjust_request[2];

 usleep_range(100, 101);

 lane_count = dp->link_train.lane_count;

 retval = drm_dp_dpcd_read(&dp->aux, DP_LANE0_1_STATUS, link_status, 2);
 if (retval < 0)
  return retval;

 retval = drm_dp_dpcd_read(&dp->aux, DP_ADJUST_REQUEST_LANE0_1,
      adjust_request, 2);
 if (retval < 0)
  return retval;

 if (analogix_dp_clock_recovery_ok(link_status, lane_count) == 0) {

  analogix_dp_set_training_pattern(dp, TRAINING_PTN2);

  retval = drm_dp_dpcd_writeb(&dp->aux, DP_TRAINING_PATTERN_SET,
         DP_LINK_SCRAMBLING_DISABLE |
      DP_TRAINING_PATTERN_2);
  if (retval < 0)
   return retval;

  dev_dbg(dp->dev, "Link Training Clock Recovery success\n");
  dp->link_train.lt_state = EQUALIZER_TRAINING;
 } else {
  for (lane = 0; lane < lane_count; lane++) {
   training_lane = analogix_dp_get_lane_link_training(
       dp, lane);
   voltage_swing = analogix_dp_get_adjust_request_voltage(
       adjust_request, lane);
   pre_emphasis = analogix_dp_get_adjust_request_pre_emphasis(
       adjust_request, lane);

   if (DPCD_VOLTAGE_SWING_GET(training_lane) ==
     voltage_swing &&
       DPCD_PRE_EMPHASIS_GET(training_lane) ==
     pre_emphasis)
    dp->link_train.cr_loop[lane]++;

   if (dp->link_train.cr_loop[lane] == MAX_CR_LOOP ||
       voltage_swing == VOLTAGE_LEVEL_3 ||
       pre_emphasis == PRE_EMPHASIS_LEVEL_3) {
    dev_err(dp->dev, "CR Max reached (%d,%d,%d)\n",
     dp->link_train.cr_loop[lane],
     voltage_swing, pre_emphasis);
    analogix_dp_reduce_link_rate(dp);
    return -EIO;
   }
  }
 }

 analogix_dp_get_adjust_training_lane(dp, adjust_request);

 for (lane = 0; lane < lane_count; lane++)
  analogix_dp_set_lane_link_training(dp,
   dp->link_train.training_lane[lane], lane);

 retval = drm_dp_dpcd_write(&dp->aux, DP_TRAINING_LANE0_SET,
       dp->link_train.training_lane, lane_count);
 if (retval < 0)
  return retval;

 return 0;
}
