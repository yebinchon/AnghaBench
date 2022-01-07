
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct intel_dp {int aux; } ;


 int DP_DPRX_FEATURE_ENUMERATION_LIST ;
 int DP_VSC_SDP_EXT_FOR_COLORIMETRY_SUPPORTED ;
 int drm_dp_dpcd_readb (int *,int ,int*) ;

bool intel_dp_get_colorimetry_status(struct intel_dp *intel_dp)
{
 u8 dprx = 0;

 if (drm_dp_dpcd_readb(&intel_dp->aux, DP_DPRX_FEATURE_ENUMERATION_LIST,
         &dprx) != 1)
  return 0;
 return dprx & DP_VSC_SDP_EXT_FOR_COLORIMETRY_SUPPORTED;
}
