
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_digital_port {int dummy; } ;


 unsigned int HDCP_2_2_HDMI_REG_WR_MSG_OFFSET ;
 int intel_hdmi_hdcp_write (struct intel_digital_port*,unsigned int,void*,size_t) ;

__attribute__((used)) static
int intel_hdmi_hdcp2_write_msg(struct intel_digital_port *intel_dig_port,
          void *buf, size_t size)
{
 unsigned int offset;

 offset = HDCP_2_2_HDMI_REG_WR_MSG_OFFSET;
 return intel_hdmi_hdcp_write(intel_dig_port, offset, buf, size);
}
