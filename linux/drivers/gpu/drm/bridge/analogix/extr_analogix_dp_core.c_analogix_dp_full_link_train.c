
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ link_rate; scalar_t__ lane_count; int lt_state; } ;
struct analogix_dp_device {int dev; TYPE_1__ link_train; } ;



 scalar_t__ DP_LINK_BW_1_62 ;
 scalar_t__ DP_LINK_BW_2_7 ;
 scalar_t__ DP_LINK_BW_5_4 ;

 int EREMOTEIO ;


 scalar_t__ LANE_COUNT1 ;
 int POWER_ALL ;

 int analogix_dp_get_max_rx_bandwidth (struct analogix_dp_device*,scalar_t__*) ;
 int analogix_dp_get_max_rx_lane_count (struct analogix_dp_device*,scalar_t__*) ;
 int analogix_dp_link_start (struct analogix_dp_device*) ;
 int analogix_dp_process_clock_recovery (struct analogix_dp_device*) ;
 int analogix_dp_process_equalizer_training (struct analogix_dp_device*) ;
 int analogix_dp_reset_macro (struct analogix_dp_device*) ;
 int analogix_dp_set_analog_power_down (struct analogix_dp_device*,int ,int ) ;
 int dev_err (int ,char*,...) ;

__attribute__((used)) static int analogix_dp_full_link_train(struct analogix_dp_device *dp,
           u32 max_lanes, u32 max_rate)
{
 int retval = 0;
 bool training_finished = 0;





 analogix_dp_reset_macro(dp);


 analogix_dp_get_max_rx_bandwidth(dp, &dp->link_train.link_rate);
 analogix_dp_get_max_rx_lane_count(dp, &dp->link_train.lane_count);

 if ((dp->link_train.link_rate != DP_LINK_BW_1_62) &&
     (dp->link_train.link_rate != DP_LINK_BW_2_7) &&
     (dp->link_train.link_rate != DP_LINK_BW_5_4)) {
  dev_err(dp->dev, "Rx Max Link Rate is abnormal :%x !\n",
   dp->link_train.link_rate);
  dp->link_train.link_rate = DP_LINK_BW_1_62;
 }

 if (dp->link_train.lane_count == 0) {
  dev_err(dp->dev, "Rx Max Lane count is abnormal :%x !\n",
   dp->link_train.lane_count);
  dp->link_train.lane_count = (u8)LANE_COUNT1;
 }


 if (dp->link_train.lane_count > max_lanes)
  dp->link_train.lane_count = max_lanes;
 if (dp->link_train.link_rate > max_rate)
  dp->link_train.link_rate = max_rate;


 analogix_dp_set_analog_power_down(dp, POWER_ALL, 0);

 dp->link_train.lt_state = 128;


 while (!retval && !training_finished) {
  switch (dp->link_train.lt_state) {
  case 128:
   retval = analogix_dp_link_start(dp);
   if (retval)
    dev_err(dp->dev, "LT link start failed!\n");
   break;
  case 132:
   retval = analogix_dp_process_clock_recovery(dp);
   if (retval)
    dev_err(dp->dev, "LT CR failed!\n");
   break;
  case 131:
   retval = analogix_dp_process_equalizer_training(dp);
   if (retval)
    dev_err(dp->dev, "LT EQ failed!\n");
   break;
  case 129:
   training_finished = 1;
   break;
  case 130:
   return -EREMOTEIO;
  }
 }
 if (retval)
  dev_err(dp->dev, "eDP link training failed (%d)\n", retval);

 return retval;
}
