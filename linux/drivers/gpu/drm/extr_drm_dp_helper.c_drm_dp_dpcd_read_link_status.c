
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct drm_dp_aux {int dummy; } ;


 int DP_LANE0_1_STATUS ;
 int DP_LINK_STATUS_SIZE ;
 int drm_dp_dpcd_read (struct drm_dp_aux*,int ,int *,int ) ;

int drm_dp_dpcd_read_link_status(struct drm_dp_aux *aux,
     u8 status[DP_LINK_STATUS_SIZE])
{
 return drm_dp_dpcd_read(aux, DP_LANE0_1_STATUS, status,
    DP_LINK_STATUS_SIZE);
}
