
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct intel_digital_port {int dummy; } ;
typedef int hdcp2_version ;


 int HDCP_2_2_HDMI_REG_VER_OFFSET ;
 int HDCP_2_2_HDMI_SUPPORT_MASK ;
 int intel_hdmi_hdcp_read (struct intel_digital_port*,int ,int*,int) ;

__attribute__((used)) static
int intel_hdmi_hdcp2_capable(struct intel_digital_port *intel_dig_port,
        bool *capable)
{
 u8 hdcp2_version;
 int ret;

 *capable = 0;
 ret = intel_hdmi_hdcp_read(intel_dig_port, HDCP_2_2_HDMI_REG_VER_OFFSET,
       &hdcp2_version, sizeof(hdcp2_version));
 if (!ret && hdcp2_version & HDCP_2_2_HDMI_SUPPORT_MASK)
  *capable = 1;

 return ret;
}
