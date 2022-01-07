
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_link_rate; int max_lane_count; } ;
struct analogix_dp_device {TYPE_1__ video_info; scalar_t__ fast_train_enable; } ;


 int analogix_dp_fast_link_train (struct analogix_dp_device*) ;
 int analogix_dp_full_link_train (struct analogix_dp_device*,int ,int ) ;

__attribute__((used)) static int analogix_dp_train_link(struct analogix_dp_device *dp)
{
 if (dp->fast_train_enable)
  return analogix_dp_fast_link_train(dp);

 return analogix_dp_full_link_train(dp, dp->video_info.max_lane_count,
        dp->video_info.max_link_rate);
}
