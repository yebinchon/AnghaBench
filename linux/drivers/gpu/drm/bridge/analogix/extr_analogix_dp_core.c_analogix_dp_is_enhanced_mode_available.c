
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct analogix_dp_device {int aux; } ;


 int DPCD_ENHANCED_FRAME_CAP (int ) ;
 int DP_MAX_LANE_COUNT ;
 int drm_dp_dpcd_readb (int *,int ,int *) ;

__attribute__((used)) static int analogix_dp_is_enhanced_mode_available(struct analogix_dp_device *dp,
        u8 *enhanced_mode_support)
{
 u8 data;
 int ret;

 ret = drm_dp_dpcd_readb(&dp->aux, DP_MAX_LANE_COUNT, &data);
 if (ret != 1) {
  *enhanced_mode_support = 0;
  return ret;
 }

 *enhanced_mode_support = DPCD_ENHANCED_FRAME_CAP(data);

 return 0;
}
