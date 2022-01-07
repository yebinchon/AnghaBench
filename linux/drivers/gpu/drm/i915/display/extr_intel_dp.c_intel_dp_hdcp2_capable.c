
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_2__ {int aux; } ;
struct intel_digital_port {TYPE_1__ dp; } ;


 int DP_HDCP_2_2_REG_RX_CAPS_OFFSET ;
 int EIO ;
 scalar_t__ HDCP_2_2_DP_HDCP_CAPABLE (scalar_t__) ;
 int HDCP_2_2_RXCAPS_LEN ;
 scalar_t__ HDCP_2_2_RX_CAPS_VERSION_VAL ;
 int drm_dp_dpcd_read (int *,int ,scalar_t__*,int) ;

__attribute__((used)) static
int intel_dp_hdcp2_capable(struct intel_digital_port *intel_dig_port,
      bool *capable)
{
 u8 rx_caps[3];
 int ret;

 *capable = 0;
 ret = drm_dp_dpcd_read(&intel_dig_port->dp.aux,
          DP_HDCP_2_2_REG_RX_CAPS_OFFSET,
          rx_caps, HDCP_2_2_RXCAPS_LEN);
 if (ret != HDCP_2_2_RXCAPS_LEN)
  return ret >= 0 ? -EIO : ret;

 if (rx_caps[0] == HDCP_2_2_RX_CAPS_VERSION_VAL &&
     HDCP_2_2_DP_HDCP_CAPABLE(rx_caps[2]))
  *capable = 1;

 return 0;
}
