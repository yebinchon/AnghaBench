
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {struct drm_device* dev; } ;
struct gma_encoder {struct cdv_intel_dp* dev_priv; TYPE_1__ base; } ;
struct drm_device {int dummy; } ;
struct cdv_intel_dp {int backlight_off_delay; } ;


 int DRM_DEBUG_KMS (char*) ;
 int EDP_BLC_ENABLE ;
 int PP_CONTROL ;
 int REG_READ (int ) ;
 int REG_WRITE (int ,int ) ;
 int gma_backlight_disable (struct drm_device*) ;
 int msleep (int) ;

__attribute__((used)) static void cdv_intel_edp_backlight_off (struct gma_encoder *intel_encoder)
{
 struct drm_device *dev = intel_encoder->base.dev;
 struct cdv_intel_dp *intel_dp = intel_encoder->dev_priv;
 u32 pp;

 DRM_DEBUG_KMS("\n");
 gma_backlight_disable(dev);
 msleep(10);
 pp = REG_READ(PP_CONTROL);

 pp &= ~EDP_BLC_ENABLE;
 REG_WRITE(PP_CONTROL, pp);
 msleep(intel_dp->backlight_off_delay);
}
