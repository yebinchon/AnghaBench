
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct intel_digital_port {int dummy; } ;


 int DRM_DEBUG_KMS (char*,int) ;
 int DRM_HDCP_BSTATUS_LEN ;
 int DRM_HDCP_DDC_BSTATUS ;
 int intel_hdmi_hdcp_read (struct intel_digital_port*,int ,int *,int ) ;

__attribute__((used)) static
int intel_hdmi_hdcp_read_bstatus(struct intel_digital_port *intel_dig_port,
     u8 *bstatus)
{
 int ret;
 ret = intel_hdmi_hdcp_read(intel_dig_port, DRM_HDCP_DDC_BSTATUS,
       bstatus, DRM_HDCP_BSTATUS_LEN);
 if (ret)
  DRM_DEBUG_KMS("Read bstatus over DDC failed (%d)\n", ret);
 return ret;
}
