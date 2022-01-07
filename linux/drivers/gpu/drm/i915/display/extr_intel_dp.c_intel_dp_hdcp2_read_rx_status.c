
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int aux; } ;
struct intel_digital_port {TYPE_1__ dp; } ;
typedef int ssize_t ;


 int DP_HDCP_2_2_REG_RXSTATUS_OFFSET ;
 int DRM_DEBUG_KMS (char*,int) ;
 int EIO ;
 int HDCP_2_2_DP_RXSTATUS_LEN ;
 int drm_dp_dpcd_read (int *,int ,int *,int) ;

__attribute__((used)) static inline
int intel_dp_hdcp2_read_rx_status(struct intel_digital_port *intel_dig_port,
      u8 *rx_status)
{
 ssize_t ret;

 ret = drm_dp_dpcd_read(&intel_dig_port->dp.aux,
          DP_HDCP_2_2_REG_RXSTATUS_OFFSET, rx_status,
          HDCP_2_2_DP_RXSTATUS_LEN);
 if (ret != HDCP_2_2_DP_RXSTATUS_LEN) {
  DRM_DEBUG_KMS("Read bstatus from DP/AUX failed (%zd)\n", ret);
  return ret >= 0 ? -EIO : ret;
 }

 return 0;
}
