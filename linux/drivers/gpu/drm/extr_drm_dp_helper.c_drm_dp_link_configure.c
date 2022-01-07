
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int values ;
typedef int u8 ;
struct drm_dp_link {int capabilities; int num_lanes; int rate; } ;
struct drm_dp_aux {int dummy; } ;


 int DP_LANE_COUNT_ENHANCED_FRAME_EN ;
 int DP_LINK_BW_SET ;
 int DP_LINK_CAP_ENHANCED_FRAMING ;
 int drm_dp_dpcd_write (struct drm_dp_aux*,int ,int *,int) ;
 int drm_dp_link_rate_to_bw_code (int ) ;

int drm_dp_link_configure(struct drm_dp_aux *aux, struct drm_dp_link *link)
{
 u8 values[2];
 int err;

 values[0] = drm_dp_link_rate_to_bw_code(link->rate);
 values[1] = link->num_lanes;

 if (link->capabilities & DP_LINK_CAP_ENHANCED_FRAMING)
  values[1] |= DP_LANE_COUNT_ENHANCED_FRAME_EN;

 err = drm_dp_dpcd_write(aux, DP_LINK_BW_SET, values, sizeof(values));
 if (err < 0)
  return err;

 return 0;
}
