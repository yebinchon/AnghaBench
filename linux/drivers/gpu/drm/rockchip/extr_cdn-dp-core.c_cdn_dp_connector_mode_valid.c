
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct drm_display_mode {int clock; } ;
struct drm_display_info {int bpc; } ;
struct drm_connector {int dummy; } ;
struct TYPE_2__ {struct drm_display_info display_info; } ;
struct cdn_dp_device {int lanes; int dev; int dpcd; int connected; TYPE_1__ connector; } ;


 int CDN_DP_MAX_LINK_RATE ;
 int DRM_DEV_DEBUG_KMS (int ,char*,int,int,int) ;
 int MODE_BAD ;
 int MODE_CLOCK_HIGH ;
 int MODE_OK ;
 struct cdn_dp_device* connector_to_dp (struct drm_connector*) ;
 int drm_dp_bw_code_to_link_rate (int ) ;
 int drm_dp_max_lane_count (int ) ;
 int drm_dp_max_link_rate (int ) ;
 int min (int,int) ;

__attribute__((used)) static int cdn_dp_connector_mode_valid(struct drm_connector *connector,
           struct drm_display_mode *mode)
{
 struct cdn_dp_device *dp = connector_to_dp(connector);
 struct drm_display_info *display_info = &dp->connector.display_info;
 u32 requested, actual, rate, sink_max, source_max = 0;
 u8 lanes, bpc;


 if (!dp->connected)
  return MODE_BAD;

 switch (display_info->bpc) {
 case 10:
  bpc = 10;
  break;
 case 6:
  bpc = 6;
  break;
 default:
  bpc = 8;
  break;
 }

 requested = mode->clock * bpc * 3 / 1000;

 source_max = dp->lanes;
 sink_max = drm_dp_max_lane_count(dp->dpcd);
 lanes = min(source_max, sink_max);

 source_max = drm_dp_bw_code_to_link_rate(CDN_DP_MAX_LINK_RATE);
 sink_max = drm_dp_max_link_rate(dp->dpcd);
 rate = min(source_max, sink_max);

 actual = rate * lanes / 100;


 actual = actual * 8 / 10;

 if (requested > actual) {
  DRM_DEV_DEBUG_KMS(dp->dev,
      "requested=%d, actual=%d, clock=%d\n",
      requested, actual, mode->clock);
  return MODE_CLOCK_HIGH;
 }

 return MODE_OK;
}
