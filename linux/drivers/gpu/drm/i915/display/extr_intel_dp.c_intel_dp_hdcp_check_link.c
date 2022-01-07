
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int aux; } ;
struct intel_digital_port {TYPE_1__ dp; } ;
typedef int ssize_t ;


 int DP_AUX_HDCP_BSTATUS ;
 int DP_BSTATUS_LINK_FAILURE ;
 int DP_BSTATUS_REAUTH_REQ ;
 int DRM_DEBUG_KMS (char*,int) ;
 int drm_dp_dpcd_read (int *,int ,int*,int) ;

__attribute__((used)) static
bool intel_dp_hdcp_check_link(struct intel_digital_port *intel_dig_port)
{
 ssize_t ret;
 u8 bstatus;

 ret = drm_dp_dpcd_read(&intel_dig_port->dp.aux, DP_AUX_HDCP_BSTATUS,
          &bstatus, 1);
 if (ret != 1) {
  DRM_DEBUG_KMS("Read bstatus from DP/AUX failed (%zd)\n", ret);
  return 0;
 }

 return !(bstatus & (DP_BSTATUS_LINK_FAILURE | DP_BSTATUS_REAUTH_REQ));
}
