
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int lane_count; int * training_lane; int link_rate; } ;
struct analogix_dp_device {int dev; TYPE_1__ link_train; int aux; } ;
typedef enum pll_status { ____Placeholder_pll_status } pll_status ;


 int DP_LANE0_1_STATUS ;
 int DP_LANE_ALIGN_STATUS_UPDATED ;
 int DP_NONE ;
 int DP_TIMEOUT_LOOP_COUNT ;
 int DRM_DEV_ERROR (int ,char*,...) ;
 int EIO ;
 int PLL_UNLOCKED ;
 int TRAINING_PTN1 ;
 int TRAINING_PTN2 ;
 scalar_t__ analogix_dp_channel_eq_ok (int *,int ,int) ;
 scalar_t__ analogix_dp_clock_recovery_ok (int *,int) ;
 int analogix_dp_get_pll_lock_status ;
 int analogix_dp_reduce_link_rate (struct analogix_dp_device*) ;
 int analogix_dp_reset_macro (struct analogix_dp_device*) ;
 int analogix_dp_set_lane_count (struct analogix_dp_device*,int) ;
 int analogix_dp_set_lane_link_training (struct analogix_dp_device*,int ,int) ;
 int analogix_dp_set_link_bandwidth (struct analogix_dp_device*,int ) ;
 int analogix_dp_set_training_pattern (struct analogix_dp_device*,int ) ;
 int drm_dp_dpcd_read (int *,int ,int *,int) ;
 int drm_dp_dpcd_readb (int *,int ,int *) ;
 int readx_poll_timeout (int ,struct analogix_dp_device*,int,int,int,int) ;
 int usleep_range (int,int) ;
 scalar_t__ verify_fast_training ;

__attribute__((used)) static int analogix_dp_fast_link_train(struct analogix_dp_device *dp)
{
 int i, ret;
 u8 link_align, link_status[2];
 enum pll_status status;

 analogix_dp_reset_macro(dp);

 analogix_dp_set_link_bandwidth(dp, dp->link_train.link_rate);
 analogix_dp_set_lane_count(dp, dp->link_train.lane_count);

 for (i = 0; i < dp->link_train.lane_count; i++) {
  analogix_dp_set_lane_link_training(dp,
   dp->link_train.training_lane[i], i);
 }

 ret = readx_poll_timeout(analogix_dp_get_pll_lock_status, dp, status,
     status != PLL_UNLOCKED, 120,
     120 * DP_TIMEOUT_LOOP_COUNT);
 if (ret) {
  DRM_DEV_ERROR(dp->dev, "Wait for pll lock failed %d\n", ret);
  return ret;
 }


 analogix_dp_set_training_pattern(dp, TRAINING_PTN1);

 usleep_range(500, 600);

 analogix_dp_set_training_pattern(dp, TRAINING_PTN2);

 usleep_range(500, 600);


 analogix_dp_set_training_pattern(dp, DP_NONE);





 if (verify_fast_training) {
  ret = drm_dp_dpcd_readb(&dp->aux, DP_LANE_ALIGN_STATUS_UPDATED,
     &link_align);
  if (ret < 0) {
   DRM_DEV_ERROR(dp->dev, "Read align status failed %d\n",
          ret);
   return ret;
  }

  ret = drm_dp_dpcd_read(&dp->aux, DP_LANE0_1_STATUS, link_status,
           2);
  if (ret < 0) {
   DRM_DEV_ERROR(dp->dev, "Read link status failed %d\n",
          ret);
   return ret;
  }

  if (analogix_dp_clock_recovery_ok(link_status,
        dp->link_train.lane_count)) {
   DRM_DEV_ERROR(dp->dev, "Clock recovery failed\n");
   analogix_dp_reduce_link_rate(dp);
   return -EIO;
  }

  if (analogix_dp_channel_eq_ok(link_status, link_align,
           dp->link_train.lane_count)) {
   DRM_DEV_ERROR(dp->dev, "Channel EQ failed\n");
   analogix_dp_reduce_link_rate(dp);
   return -EIO;
  }
 }

 return 0;
}
