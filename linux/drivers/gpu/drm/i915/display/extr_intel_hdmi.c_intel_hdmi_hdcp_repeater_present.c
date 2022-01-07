
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct intel_digital_port {int dummy; } ;


 int DRM_DEBUG_KMS (char*,int) ;
 int DRM_HDCP_DDC_BCAPS ;
 int DRM_HDCP_DDC_BCAPS_REPEATER_PRESENT ;
 int intel_hdmi_hdcp_read (struct intel_digital_port*,int ,int*,int) ;

__attribute__((used)) static
int intel_hdmi_hdcp_repeater_present(struct intel_digital_port *intel_dig_port,
         bool *repeater_present)
{
 int ret;
 u8 val;

 ret = intel_hdmi_hdcp_read(intel_dig_port, DRM_HDCP_DDC_BCAPS, &val, 1);
 if (ret) {
  DRM_DEBUG_KMS("Read bcaps over DDC failed (%d)\n", ret);
  return ret;
 }
 *repeater_present = val & DRM_HDCP_DDC_BCAPS_REPEATER_PRESENT;
 return 0;
}
