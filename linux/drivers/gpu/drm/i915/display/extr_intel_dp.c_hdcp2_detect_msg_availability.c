
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct intel_digital_port {int dummy; } ;


 int DRM_ERROR (char*,int) ;
 int EINVAL ;


 int HDCP_2_2_DP_RXSTATUS_H_PRIME (int) ;
 int HDCP_2_2_DP_RXSTATUS_PAIRING (int) ;
 int HDCP_2_2_DP_RXSTATUS_READY (int) ;

 int intel_dp_hdcp2_read_rx_status (struct intel_digital_port*,int*) ;

__attribute__((used)) static
int hdcp2_detect_msg_availability(struct intel_digital_port *intel_dig_port,
      u8 msg_id, bool *msg_ready)
{
 u8 rx_status;
 int ret;

 *msg_ready = 0;
 ret = intel_dp_hdcp2_read_rx_status(intel_dig_port, &rx_status);
 if (ret < 0)
  return ret;

 switch (msg_id) {
 case 130:
  if (HDCP_2_2_DP_RXSTATUS_H_PRIME(rx_status))
   *msg_ready = 1;
  break;
 case 129:
  if (HDCP_2_2_DP_RXSTATUS_PAIRING(rx_status))
   *msg_ready = 1;
  break;
 case 128:
  if (HDCP_2_2_DP_RXSTATUS_READY(rx_status))
   *msg_ready = 1;
  break;
 default:
  DRM_ERROR("Unidentified msg_id: %d\n", msg_id);
  return -EINVAL;
 }

 return 0;
}
