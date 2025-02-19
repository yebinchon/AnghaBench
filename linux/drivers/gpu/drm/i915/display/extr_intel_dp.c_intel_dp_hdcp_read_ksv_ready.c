
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
 int DP_BSTATUS_READY ;
 int DRM_DEBUG_KMS (char*,int) ;
 int EIO ;
 int drm_dp_dpcd_read (int *,int ,int*,int) ;

__attribute__((used)) static
int intel_dp_hdcp_read_ksv_ready(struct intel_digital_port *intel_dig_port,
     bool *ksv_ready)
{
 ssize_t ret;
 u8 bstatus;
 ret = drm_dp_dpcd_read(&intel_dig_port->dp.aux, DP_AUX_HDCP_BSTATUS,
          &bstatus, 1);
 if (ret != 1) {
  DRM_DEBUG_KMS("Read bstatus from DP/AUX failed (%zd)\n", ret);
  return ret >= 0 ? -EIO : ret;
 }
 *ksv_ready = bstatus & DP_BSTATUS_READY;
 return 0;
}
