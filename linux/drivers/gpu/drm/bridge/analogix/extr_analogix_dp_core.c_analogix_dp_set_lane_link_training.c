
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct analogix_dp_device {int dummy; } ;


 int analogix_dp_set_lane0_link_training (struct analogix_dp_device*,int ) ;
 int analogix_dp_set_lane1_link_training (struct analogix_dp_device*,int ) ;
 int analogix_dp_set_lane2_link_training (struct analogix_dp_device*,int ) ;
 int analogix_dp_set_lane3_link_training (struct analogix_dp_device*,int ) ;

__attribute__((used)) static void analogix_dp_set_lane_link_training(struct analogix_dp_device *dp,
            u8 training_lane_set, int lane)
{
 switch (lane) {
 case 0:
  analogix_dp_set_lane0_link_training(dp, training_lane_set);
  break;
 case 1:
  analogix_dp_set_lane1_link_training(dp, training_lane_set);
  break;

 case 2:
  analogix_dp_set_lane2_link_training(dp, training_lane_set);
  break;

 case 3:
  analogix_dp_set_lane3_link_training(dp, training_lane_set);
  break;
 }
}
