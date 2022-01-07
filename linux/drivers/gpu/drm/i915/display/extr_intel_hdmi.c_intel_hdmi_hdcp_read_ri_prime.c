
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct intel_digital_port {int dummy; } ;


 int DRM_DEBUG_KMS (char*,int) ;
 int DRM_HDCP_DDC_RI_PRIME ;
 int DRM_HDCP_RI_LEN ;
 int intel_hdmi_hdcp_read (struct intel_digital_port*,int ,int *,int ) ;

__attribute__((used)) static
int intel_hdmi_hdcp_read_ri_prime(struct intel_digital_port *intel_dig_port,
      u8 *ri_prime)
{
 int ret;
 ret = intel_hdmi_hdcp_read(intel_dig_port, DRM_HDCP_DDC_RI_PRIME,
       ri_prime, DRM_HDCP_RI_LEN);
 if (ret)
  DRM_DEBUG_KMS("Read Ri' over DDC failed (%d)\n", ret);
 return ret;
}
