
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vals ;
typedef int u8 ;
typedef int u32 ;
struct intel_dp {int* edp_dpcd; int aux; } ;
struct intel_connector {TYPE_1__* encoder; } ;
struct drm_connector_state {int connector; } ;
struct TYPE_2__ {int base; } ;


 int DP_EDP_BACKLIGHT_BRIGHTNESS_BYTE_COUNT ;
 int DP_EDP_BACKLIGHT_BRIGHTNESS_MSB ;
 int DRM_DEBUG_KMS (char*) ;
 scalar_t__ drm_dp_dpcd_write (int *,int ,int*,int) ;
 struct intel_dp* enc_to_intel_dp (int *) ;
 struct intel_connector* to_intel_connector (int ) ;

__attribute__((used)) static void
intel_dp_aux_set_backlight(const struct drm_connector_state *conn_state, u32 level)
{
 struct intel_connector *connector = to_intel_connector(conn_state->connector);
 struct intel_dp *intel_dp = enc_to_intel_dp(&connector->encoder->base);
 u8 vals[2] = { 0x0 };

 vals[0] = level;


 if (intel_dp->edp_dpcd[2] & DP_EDP_BACKLIGHT_BRIGHTNESS_BYTE_COUNT) {
  vals[0] = (level & 0xFF00) >> 8;
  vals[1] = (level & 0xFF);
 }
 if (drm_dp_dpcd_write(&intel_dp->aux, DP_EDP_BACKLIGHT_BRIGHTNESS_MSB,
         vals, sizeof(vals)) < 0) {
  DRM_DEBUG_KMS("Failed to write aux backlight level\n");
  return;
 }
}
