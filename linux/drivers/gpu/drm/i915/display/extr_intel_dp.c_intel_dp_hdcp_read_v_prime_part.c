
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int aux; } ;
struct intel_digital_port {TYPE_1__ dp; } ;
typedef int ssize_t ;


 int DP_AUX_HDCP_V_PRIME (int) ;
 int DRM_DEBUG_KMS (char*,int,int) ;
 int DRM_HDCP_V_PRIME_NUM_PARTS ;
 int DRM_HDCP_V_PRIME_PART_LEN ;
 int EINVAL ;
 int EIO ;
 int drm_dp_dpcd_read (int *,int ,int *,int) ;

__attribute__((used)) static
int intel_dp_hdcp_read_v_prime_part(struct intel_digital_port *intel_dig_port,
        int i, u32 *part)
{
 ssize_t ret;

 if (i >= DRM_HDCP_V_PRIME_NUM_PARTS)
  return -EINVAL;

 ret = drm_dp_dpcd_read(&intel_dig_port->dp.aux,
          DP_AUX_HDCP_V_PRIME(i), part,
          DRM_HDCP_V_PRIME_PART_LEN);
 if (ret != DRM_HDCP_V_PRIME_PART_LEN) {
  DRM_DEBUG_KMS("Read v'[%d] from DP/AUX failed (%zd)\n", i, ret);
  return ret >= 0 ? -EIO : ret;
 }
 return 0;
}
