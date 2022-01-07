
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct analogix_dp_device {int aux; } ;


 int DPCD_LANE_COUNT_SET (int ) ;
 int DP_LANE_COUNT_ENHANCED_FRAME_EN ;
 int DP_LANE_COUNT_SET ;
 int drm_dp_dpcd_readb (int *,int ,int *) ;
 int drm_dp_dpcd_writeb (int *,int ,int) ;

__attribute__((used)) static int
analogix_dp_enable_rx_to_enhanced_mode(struct analogix_dp_device *dp,
           bool enable)
{
 u8 data;
 int ret;

 ret = drm_dp_dpcd_readb(&dp->aux, DP_LANE_COUNT_SET, &data);
 if (ret != 1)
  return ret;

 if (enable)
  ret = drm_dp_dpcd_writeb(&dp->aux, DP_LANE_COUNT_SET,
      DP_LANE_COUNT_ENHANCED_FRAME_EN |
      DPCD_LANE_COUNT_SET(data));
 else
  ret = drm_dp_dpcd_writeb(&dp->aux, DP_LANE_COUNT_SET,
      DPCD_LANE_COUNT_SET(data));

 return ret < 0 ? ret : 0;
}
