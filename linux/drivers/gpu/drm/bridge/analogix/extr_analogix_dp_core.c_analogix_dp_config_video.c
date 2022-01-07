
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct analogix_dp_device {int dev; } ;


 int CALCULATED_M ;
 int DP_TIMEOUT_LOOP_COUNT ;
 int EINVAL ;
 int ETIMEDOUT ;
 scalar_t__ PLL_UNLOCKED ;
 int VIDEO_TIMING_FROM_CAPTURE ;
 int analogix_dp_config_video_slave_mode (struct analogix_dp_device*) ;
 int analogix_dp_enable_video_master (struct analogix_dp_device*,int ) ;
 int analogix_dp_enable_video_mute (struct analogix_dp_device*,int ) ;
 scalar_t__ analogix_dp_get_pll_lock_status (struct analogix_dp_device*) ;
 scalar_t__ analogix_dp_is_slave_video_stream_clock_on (struct analogix_dp_device*) ;
 scalar_t__ analogix_dp_is_video_stream_on (struct analogix_dp_device*) ;
 int analogix_dp_set_video_color_format (struct analogix_dp_device*) ;
 int analogix_dp_set_video_cr_mn (struct analogix_dp_device*,int ,int ,int ) ;
 int analogix_dp_set_video_timing_mode (struct analogix_dp_device*,int ) ;
 int analogix_dp_start_video (struct analogix_dp_device*) ;
 int dev_err (int ,char*) ;
 int dev_warn (int ,char*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int analogix_dp_config_video(struct analogix_dp_device *dp)
{
 int timeout_loop = 0;
 int done_count = 0;

 analogix_dp_config_video_slave_mode(dp);

 analogix_dp_set_video_color_format(dp);

 if (analogix_dp_get_pll_lock_status(dp) == PLL_UNLOCKED) {
  dev_err(dp->dev, "PLL is not locked yet.\n");
  return -EINVAL;
 }

 for (;;) {
  timeout_loop++;
  if (analogix_dp_is_slave_video_stream_clock_on(dp) == 0)
   break;
  if (timeout_loop > DP_TIMEOUT_LOOP_COUNT) {
   dev_err(dp->dev, "Timeout of slave video streamclk ok\n");
   return -ETIMEDOUT;
  }
  usleep_range(1000, 1001);
 }


 analogix_dp_set_video_cr_mn(dp, CALCULATED_M, 0, 0);


 analogix_dp_set_video_timing_mode(dp, VIDEO_TIMING_FROM_CAPTURE);


 analogix_dp_enable_video_mute(dp, 0);


 analogix_dp_enable_video_master(dp, 0);


 analogix_dp_start_video(dp);

 timeout_loop = 0;

 for (;;) {
  timeout_loop++;
  if (analogix_dp_is_video_stream_on(dp) == 0) {
   done_count++;
   if (done_count > 10)
    break;
  } else if (done_count) {
   done_count = 0;
  }
  if (timeout_loop > DP_TIMEOUT_LOOP_COUNT) {
   dev_warn(dp->dev,
     "Ignoring timeout of video streamclk ok\n");
   break;
  }

  usleep_range(1000, 1001);
 }

 return 0;
}
