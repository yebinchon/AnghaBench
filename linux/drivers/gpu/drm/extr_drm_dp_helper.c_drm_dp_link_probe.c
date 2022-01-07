
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int values ;
typedef int u8 ;
struct drm_dp_link {int revision; int num_lanes; int capabilities; int rate; } ;
struct drm_dp_aux {int dummy; } ;


 int DP_DPCD_REV ;
 int DP_ENHANCED_FRAME_CAP ;
 int DP_LINK_CAP_ENHANCED_FRAMING ;
 int DP_MAX_LANE_COUNT_MASK ;
 int drm_dp_bw_code_to_link_rate (int) ;
 int drm_dp_dpcd_read (struct drm_dp_aux*,int ,int*,int) ;
 int memset (struct drm_dp_link*,int ,int) ;

int drm_dp_link_probe(struct drm_dp_aux *aux, struct drm_dp_link *link)
{
 u8 values[3];
 int err;

 memset(link, 0, sizeof(*link));

 err = drm_dp_dpcd_read(aux, DP_DPCD_REV, values, sizeof(values));
 if (err < 0)
  return err;

 link->revision = values[0];
 link->rate = drm_dp_bw_code_to_link_rate(values[1]);
 link->num_lanes = values[2] & DP_MAX_LANE_COUNT_MASK;

 if (values[2] & DP_ENHANCED_FRAME_CAP)
  link->capabilities |= DP_LINK_CAP_ENHANCED_FRAMING;

 return 0;
}
