
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int port; } ;
struct intel_digital_port {TYPE_1__ base; } ;
typedef enum port { ____Placeholder_port } port ;


 int DRM_ERROR (char*,int) ;
 int EINVAL ;
 int HDCP_DDIA_REP_PRESENT ;
 int HDCP_DDIA_SHA1_M0 ;
 int HDCP_DDIB_REP_PRESENT ;
 int HDCP_DDIB_SHA1_M0 ;
 int HDCP_DDIC_REP_PRESENT ;
 int HDCP_DDIC_SHA1_M0 ;
 int HDCP_DDID_REP_PRESENT ;
 int HDCP_DDID_SHA1_M0 ;
 int HDCP_DDIE_REP_PRESENT ;
 int HDCP_DDIE_SHA1_M0 ;






__attribute__((used)) static
u32 intel_hdcp_get_repeater_ctl(struct intel_digital_port *intel_dig_port)
{
 enum port port = intel_dig_port->base.port;
 switch (port) {
 case 132:
  return HDCP_DDIA_REP_PRESENT | HDCP_DDIA_SHA1_M0;
 case 131:
  return HDCP_DDIB_REP_PRESENT | HDCP_DDIB_SHA1_M0;
 case 130:
  return HDCP_DDIC_REP_PRESENT | HDCP_DDIC_SHA1_M0;
 case 129:
  return HDCP_DDID_REP_PRESENT | HDCP_DDID_SHA1_M0;
 case 128:
  return HDCP_DDIE_REP_PRESENT | HDCP_DDIE_SHA1_M0;
 default:
  break;
 }
 DRM_ERROR("Unknown port %d\n", port);
 return -EINVAL;
}
