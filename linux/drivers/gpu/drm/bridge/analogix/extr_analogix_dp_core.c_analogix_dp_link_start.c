
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int lane_count; int link_rate; scalar_t__* cr_loop; scalar_t__ eq_loop; int lt_state; } ;
struct analogix_dp_device {int aux; int dev; TYPE_1__ link_train; } ;


 int CLOCK_RECOVERY ;
 int DP_LINK_BW_SET ;
 int DP_LINK_SCRAMBLING_DISABLE ;
 int DP_TIMEOUT_LOOP_COUNT ;
 int DP_TRAINING_LANE0_SET ;
 int DP_TRAINING_PATTERN_1 ;
 int DP_TRAINING_PATTERN_SET ;
 int DP_TRAIN_PRE_EMPH_LEVEL_0 ;
 int DP_TRAIN_VOLTAGE_SWING_LEVEL_0 ;
 int ETIMEDOUT ;
 scalar_t__ PLL_UNLOCKED ;
 int PRE_EMPHASIS_LEVEL_0 ;
 int TRAINING_PTN1 ;
 scalar_t__ analogix_dp_get_pll_lock_status (struct analogix_dp_device*) ;
 int analogix_dp_set_enhanced_mode (struct analogix_dp_device*) ;
 int analogix_dp_set_lane_count (struct analogix_dp_device*,int) ;
 int analogix_dp_set_lane_lane_pre_emphasis (struct analogix_dp_device*,int ,int) ;
 int analogix_dp_set_link_bandwidth (struct analogix_dp_device*,int) ;
 int analogix_dp_set_training_pattern (struct analogix_dp_device*,int ) ;
 int dev_err (int ,char*) ;
 int drm_dp_dpcd_write (int *,int ,int*,int) ;
 int drm_dp_dpcd_writeb (int *,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int analogix_dp_link_start(struct analogix_dp_device *dp)
{
 u8 buf[4];
 int lane, lane_count, pll_tries, retval;

 lane_count = dp->link_train.lane_count;

 dp->link_train.lt_state = CLOCK_RECOVERY;
 dp->link_train.eq_loop = 0;

 for (lane = 0; lane < lane_count; lane++)
  dp->link_train.cr_loop[lane] = 0;


 analogix_dp_set_link_bandwidth(dp, dp->link_train.link_rate);
 analogix_dp_set_lane_count(dp, dp->link_train.lane_count);


 buf[0] = dp->link_train.link_rate;
 buf[1] = dp->link_train.lane_count;
 retval = drm_dp_dpcd_write(&dp->aux, DP_LINK_BW_SET, buf, 2);
 if (retval < 0)
  return retval;

 retval = analogix_dp_set_enhanced_mode(dp);
 if (retval < 0) {
  dev_err(dp->dev, "failed to set enhance mode\n");
  return retval;
 }


 for (lane = 0; lane < lane_count; lane++)
  analogix_dp_set_lane_lane_pre_emphasis(dp,
   PRE_EMPHASIS_LEVEL_0, lane);


 pll_tries = 0;
 while (analogix_dp_get_pll_lock_status(dp) == PLL_UNLOCKED) {
  if (pll_tries == DP_TIMEOUT_LOOP_COUNT) {
   dev_err(dp->dev, "Wait for PLL lock timed out\n");
   return -ETIMEDOUT;
  }

  pll_tries++;
  usleep_range(90, 120);
 }


 analogix_dp_set_training_pattern(dp, TRAINING_PTN1);


 retval = drm_dp_dpcd_writeb(&dp->aux, DP_TRAINING_PATTERN_SET,
        DP_LINK_SCRAMBLING_DISABLE |
     DP_TRAINING_PATTERN_1);
 if (retval < 0)
  return retval;

 for (lane = 0; lane < lane_count; lane++)
  buf[lane] = DP_TRAIN_PRE_EMPH_LEVEL_0 |
       DP_TRAIN_VOLTAGE_SWING_LEVEL_0;

 retval = drm_dp_dpcd_write(&dp->aux, DP_TRAINING_LANE0_SET, buf,
       lane_count);
 if (retval < 0)
  return retval;

 return 0;
}
