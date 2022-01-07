
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct analogix_dp_device {int aux; } ;


 int DP_NONE ;
 int DP_TRAINING_PATTERN_DISABLE ;
 int DP_TRAINING_PATTERN_SET ;
 int analogix_dp_set_training_pattern (struct analogix_dp_device*,int ) ;
 int drm_dp_dpcd_writeb (int *,int ,int ) ;

__attribute__((used)) static int analogix_dp_training_pattern_dis(struct analogix_dp_device *dp)
{
 int ret;

 analogix_dp_set_training_pattern(dp, DP_NONE);

 ret = drm_dp_dpcd_writeb(&dp->aux, DP_TRAINING_PATTERN_SET,
     DP_TRAINING_PATTERN_DISABLE);

 return ret < 0 ? ret : 0;
}
