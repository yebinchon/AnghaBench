
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct analogix_dp_device {int aux; } ;


 int DP_MAX_LINK_RATE ;
 int drm_dp_dpcd_readb (int *,int ,int *) ;

__attribute__((used)) static void analogix_dp_get_max_rx_bandwidth(struct analogix_dp_device *dp,
          u8 *bandwidth)
{
 u8 data;







 drm_dp_dpcd_readb(&dp->aux, DP_MAX_LINK_RATE, &data);
 *bandwidth = data;
}
