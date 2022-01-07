
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct analogix_dp_device {int aux; } ;


 int DPCD_MAX_LANE_COUNT (int ) ;
 int DP_MAX_LANE_COUNT ;
 int drm_dp_dpcd_readb (int *,int ,int *) ;

__attribute__((used)) static void analogix_dp_get_max_rx_lane_count(struct analogix_dp_device *dp,
           u8 *lane_count)
{
 u8 data;





 drm_dp_dpcd_readb(&dp->aux, DP_MAX_LANE_COUNT, &data);
 *lane_count = DPCD_MAX_LANE_COUNT(data);
}
