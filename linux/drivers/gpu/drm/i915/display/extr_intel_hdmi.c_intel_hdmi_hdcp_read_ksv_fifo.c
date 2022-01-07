
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct intel_digital_port {int dummy; } ;


 int DRM_DEBUG_KMS (char*,int) ;
 int DRM_HDCP_DDC_KSV_FIFO ;
 int DRM_HDCP_KSV_LEN ;
 int intel_hdmi_hdcp_read (struct intel_digital_port*,int ,int *,int) ;

__attribute__((used)) static
int intel_hdmi_hdcp_read_ksv_fifo(struct intel_digital_port *intel_dig_port,
      int num_downstream, u8 *ksv_fifo)
{
 int ret;
 ret = intel_hdmi_hdcp_read(intel_dig_port, DRM_HDCP_DDC_KSV_FIFO,
       ksv_fifo, num_downstream * DRM_HDCP_KSV_LEN);
 if (ret) {
  DRM_DEBUG_KMS("Read ksv fifo over DDC failed (%d)\n", ret);
  return ret;
 }
 return 0;
}
