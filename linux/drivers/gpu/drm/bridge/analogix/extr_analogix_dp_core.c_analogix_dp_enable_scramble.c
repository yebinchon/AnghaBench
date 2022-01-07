
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct analogix_dp_device {int aux; } ;


 int DP_LINK_SCRAMBLING_DISABLE ;
 int DP_TRAINING_PATTERN_SET ;
 int analogix_dp_disable_scrambling (struct analogix_dp_device*) ;
 int analogix_dp_enable_scrambling (struct analogix_dp_device*) ;
 int drm_dp_dpcd_readb (int *,int ,int*) ;
 int drm_dp_dpcd_writeb (int *,int ,int) ;

__attribute__((used)) static int analogix_dp_enable_scramble(struct analogix_dp_device *dp,
           bool enable)
{
 u8 data;
 int ret;

 if (enable) {
  analogix_dp_enable_scrambling(dp);

  ret = drm_dp_dpcd_readb(&dp->aux, DP_TRAINING_PATTERN_SET,
     &data);
  if (ret != 1)
   return ret;
  ret = drm_dp_dpcd_writeb(&dp->aux, DP_TRAINING_PATTERN_SET,
       (u8)(data & ~DP_LINK_SCRAMBLING_DISABLE));
 } else {
  analogix_dp_disable_scrambling(dp);

  ret = drm_dp_dpcd_readb(&dp->aux, DP_TRAINING_PATTERN_SET,
     &data);
  if (ret != 1)
   return ret;
  ret = drm_dp_dpcd_writeb(&dp->aux, DP_TRAINING_PATTERN_SET,
       (u8)(data | DP_LINK_SCRAMBLING_DISABLE));
 }
 return ret < 0 ? ret : 0;
}
