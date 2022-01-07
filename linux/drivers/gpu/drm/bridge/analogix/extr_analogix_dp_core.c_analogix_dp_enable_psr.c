
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_2__ {int HB1; int HB2; int HB3; scalar_t__ HB0; } ;
struct dp_sdp {int* db; TYPE_1__ sdp_header; } ;
struct analogix_dp_device {int dev; int aux; } ;
typedef int psr_vsc ;


 scalar_t__ DP_PSR_SINK_ACTIVE_RFB ;
 int DP_PSR_STATUS ;
 int DRM_DEV_ERROR (int ,char*,int) ;
 int EDP_VSC_PSR_CRC_VALUES_VALID ;
 int EDP_VSC_PSR_STATE_ACTIVE ;
 int POWER_ALL ;
 int analogix_dp_send_psr_spd (struct analogix_dp_device*,struct dp_sdp*,int) ;
 int analogix_dp_set_analog_power_down (struct analogix_dp_device*,int ,int) ;
 int drm_dp_dpcd_readb (int *,int ,scalar_t__*) ;
 int memset (struct dp_sdp*,int ,int) ;

__attribute__((used)) static int analogix_dp_enable_psr(struct analogix_dp_device *dp)
{
 struct dp_sdp psr_vsc;
 int ret;
 u8 sink;

 ret = drm_dp_dpcd_readb(&dp->aux, DP_PSR_STATUS, &sink);
 if (ret != 1)
  DRM_DEV_ERROR(dp->dev, "Failed to read psr status %d\n", ret);
 else if (sink == DP_PSR_SINK_ACTIVE_RFB)
  return 0;


 memset(&psr_vsc, 0, sizeof(psr_vsc));
 psr_vsc.sdp_header.HB0 = 0;
 psr_vsc.sdp_header.HB1 = 0x7;
 psr_vsc.sdp_header.HB2 = 0x2;
 psr_vsc.sdp_header.HB3 = 0x8;
 psr_vsc.db[0] = 0;
 psr_vsc.db[1] = EDP_VSC_PSR_STATE_ACTIVE | EDP_VSC_PSR_CRC_VALUES_VALID;

 ret = analogix_dp_send_psr_spd(dp, &psr_vsc, 1);
 if (!ret)
  analogix_dp_set_analog_power_down(dp, POWER_ALL, 1);

 return ret;
}
