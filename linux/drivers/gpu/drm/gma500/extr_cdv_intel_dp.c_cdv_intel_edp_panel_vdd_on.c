
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {struct drm_device* dev; } ;
struct gma_encoder {struct cdv_intel_dp* dev_priv; TYPE_1__ base; } ;
struct drm_device {int dummy; } ;
struct cdv_intel_dp {int panel_power_up_delay; scalar_t__ panel_on; } ;


 int DRM_DEBUG_KMS (char*) ;
 int EDP_FORCE_VDD ;
 int PP_CONTROL ;
 int REG_READ (int ) ;
 int REG_WRITE (int ,int ) ;
 int msleep (int ) ;

__attribute__((used)) static void cdv_intel_edp_panel_vdd_on(struct gma_encoder *intel_encoder)
{
 struct drm_device *dev = intel_encoder->base.dev;
 struct cdv_intel_dp *intel_dp = intel_encoder->dev_priv;
 u32 pp;

 if (intel_dp->panel_on) {
  DRM_DEBUG_KMS("Skip VDD on because of panel on\n");
  return;
 }
 DRM_DEBUG_KMS("\n");

 pp = REG_READ(PP_CONTROL);

 pp |= EDP_FORCE_VDD;
 REG_WRITE(PP_CONTROL, pp);
 REG_READ(PP_CONTROL);
 msleep(intel_dp->panel_power_up_delay);
}
