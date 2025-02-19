
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct intel_hdmi {TYPE_1__* attached_connector; } ;
struct intel_hdcp {int is_paired; } ;
struct intel_digital_port {struct intel_hdmi hdmi; } ;
typedef int ssize_t ;
struct TYPE_2__ {struct intel_hdcp hdcp; } ;


 int DRM_DEBUG_KMS (char*,int,int) ;
 unsigned int HDCP_2_2_HDMI_REG_RD_MSG_OFFSET ;
 int intel_hdmi_hdcp2_wait_for_msg (struct intel_digital_port*,int,int ) ;
 int intel_hdmi_hdcp_read (struct intel_digital_port*,unsigned int,void*,int) ;

__attribute__((used)) static
int intel_hdmi_hdcp2_read_msg(struct intel_digital_port *intel_dig_port,
         u8 msg_id, void *buf, size_t size)
{
 struct intel_hdmi *hdmi = &intel_dig_port->hdmi;
 struct intel_hdcp *hdcp = &hdmi->attached_connector->hdcp;
 unsigned int offset;
 ssize_t ret;

 ret = intel_hdmi_hdcp2_wait_for_msg(intel_dig_port, msg_id,
         hdcp->is_paired);
 if (ret < 0)
  return ret;





 if (ret > size) {
  DRM_DEBUG_KMS("msg_sz(%zd) is more than exp size(%zu)\n",
         ret, size);
  return -1;
 }

 offset = HDCP_2_2_HDMI_REG_RD_MSG_OFFSET;
 ret = intel_hdmi_hdcp_read(intel_dig_port, offset, buf, ret);
 if (ret)
  DRM_DEBUG_KMS("Failed to read msg_id: %d(%zd)\n", msg_id, ret);

 return ret;
}
