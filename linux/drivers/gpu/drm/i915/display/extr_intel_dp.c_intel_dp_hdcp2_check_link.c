
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct intel_digital_port {int dummy; } ;


 scalar_t__ HDCP_2_2_DP_RXSTATUS_LINK_FAILED (int ) ;
 scalar_t__ HDCP_2_2_DP_RXSTATUS_READY (int ) ;
 scalar_t__ HDCP_2_2_DP_RXSTATUS_REAUTH_REQ (int ) ;
 int HDCP_LINK_INTEGRITY_FAILURE ;
 int HDCP_REAUTH_REQUEST ;
 int HDCP_TOPOLOGY_CHANGE ;
 int intel_dp_hdcp2_read_rx_status (struct intel_digital_port*,int *) ;

__attribute__((used)) static
int intel_dp_hdcp2_check_link(struct intel_digital_port *intel_dig_port)
{
 u8 rx_status;
 int ret;

 ret = intel_dp_hdcp2_read_rx_status(intel_dig_port, &rx_status);
 if (ret)
  return ret;

 if (HDCP_2_2_DP_RXSTATUS_REAUTH_REQ(rx_status))
  ret = HDCP_REAUTH_REQUEST;
 else if (HDCP_2_2_DP_RXSTATUS_LINK_FAILED(rx_status))
  ret = HDCP_LINK_INTEGRITY_FAILURE;
 else if (HDCP_2_2_DP_RXSTATUS_READY(rx_status))
  ret = HDCP_TOPOLOGY_CHANGE;

 return ret;
}
