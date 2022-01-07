
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct intel_digital_port {int dummy; } ;


 int HDCP_2_2_HDMI_REG_RXSTATUS_OFFSET ;
 int HDCP_2_2_HDMI_RXSTATUS_LEN ;
 int intel_hdmi_hdcp_read (struct intel_digital_port*,int ,int *,int ) ;

__attribute__((used)) static
int intel_hdmi_hdcp2_read_rx_status(struct intel_digital_port *intel_dig_port,
        u8 *rx_status)
{
 return intel_hdmi_hdcp_read(intel_dig_port,
        HDCP_2_2_HDMI_REG_RXSTATUS_OFFSET,
        rx_status,
        HDCP_2_2_HDMI_RXSTATUS_LEN);
}
