
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int aux; } ;
struct intel_digital_port {TYPE_1__ dp; } ;
typedef int ssize_t ;


 int DP_AUX_HDCP_RI_PRIME ;
 int DRM_DEBUG_KMS (char*,int) ;
 int DRM_HDCP_RI_LEN ;
 int EIO ;
 int drm_dp_dpcd_read (int *,int ,int *,int) ;

__attribute__((used)) static
int intel_dp_hdcp_read_ri_prime(struct intel_digital_port *intel_dig_port,
    u8 *ri_prime)
{
 ssize_t ret;
 ret = drm_dp_dpcd_read(&intel_dig_port->dp.aux, DP_AUX_HDCP_RI_PRIME,
          ri_prime, DRM_HDCP_RI_LEN);
 if (ret != DRM_HDCP_RI_LEN) {
  DRM_DEBUG_KMS("Read Ri' from DP/AUX failed (%zd)\n", ret);
  return ret >= 0 ? -EIO : ret;
 }
 return 0;
}
