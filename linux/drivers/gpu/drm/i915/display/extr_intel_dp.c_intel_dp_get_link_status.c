
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct intel_dp {int aux; } ;


 int DP_LANE0_1_STATUS ;
 scalar_t__ DP_LINK_STATUS_SIZE ;
 scalar_t__ drm_dp_dpcd_read (int *,int ,int *,scalar_t__) ;

bool
intel_dp_get_link_status(struct intel_dp *intel_dp, u8 link_status[DP_LINK_STATUS_SIZE])
{
 return drm_dp_dpcd_read(&intel_dp->aux, DP_LANE0_1_STATUS, link_status,
    DP_LINK_STATUS_SIZE) == DP_LINK_STATUS_SIZE;
}
