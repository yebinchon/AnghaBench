
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct intel_dp {int aux; } ;
struct TYPE_5__ {int dev; } ;
struct intel_connector {TYPE_2__* encoder; TYPE_1__ base; } ;
struct TYPE_7__ {int pwm_freq_hz; } ;
struct TYPE_8__ {TYPE_3__ backlight; } ;
struct drm_i915_private {TYPE_4__ vbt; } ;
struct TYPE_6__ {int base; } ;


 int DIV_ROUND_CLOSEST (int,int) ;
 int DP_EDP_BACKLIGHT_FREQ_BASE_KHZ ;
 int DP_EDP_BACKLIGHT_FREQ_SET ;
 int DP_EDP_PWMGEN_BIT_COUNT ;
 int DP_EDP_PWMGEN_BIT_COUNT_CAP_MAX ;
 int DP_EDP_PWMGEN_BIT_COUNT_CAP_MIN ;
 int DP_EDP_PWMGEN_BIT_COUNT_MASK ;
 int DRM_DEBUG_KMS (char*,...) ;
 int KHz (int ) ;
 int clamp (int,int,int) ;
 int drm_dp_dpcd_readb (int *,int ,int*) ;
 scalar_t__ drm_dp_dpcd_writeb (int *,int ,int) ;
 struct intel_dp* enc_to_intel_dp (int *) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static bool intel_dp_aux_set_pwm_freq(struct intel_connector *connector)
{
 struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 struct intel_dp *intel_dp = enc_to_intel_dp(&connector->encoder->base);
 int freq, fxp, fxp_min, fxp_max, fxp_actual, f = 1;
 u8 pn, pn_min, pn_max;





 freq = dev_priv->vbt.backlight.pwm_freq_hz;
 DRM_DEBUG_KMS("VBT defined backlight frequency %u Hz\n", freq);
 if (!freq) {
  DRM_DEBUG_KMS("Use panel default backlight frequency\n");
  return 0;
 }

 fxp = DIV_ROUND_CLOSEST(KHz(DP_EDP_BACKLIGHT_FREQ_BASE_KHZ), freq);
 if (drm_dp_dpcd_readb(&intel_dp->aux,
          DP_EDP_PWMGEN_BIT_COUNT_CAP_MIN, &pn_min) != 1) {
  DRM_DEBUG_KMS("Failed to read pwmgen bit count cap min\n");
  return 0;
 }
 if (drm_dp_dpcd_readb(&intel_dp->aux,
          DP_EDP_PWMGEN_BIT_COUNT_CAP_MAX, &pn_max) != 1) {
  DRM_DEBUG_KMS("Failed to read pwmgen bit count cap max\n");
  return 0;
 }
 pn_min &= DP_EDP_PWMGEN_BIT_COUNT_MASK;
 pn_max &= DP_EDP_PWMGEN_BIT_COUNT_MASK;

 fxp_min = DIV_ROUND_CLOSEST(fxp * 3, 4);
 fxp_max = DIV_ROUND_CLOSEST(fxp * 5, 4);
 if (fxp_min < (1 << pn_min) || (255 << pn_max) < fxp_max) {
  DRM_DEBUG_KMS("VBT defined backlight frequency out of range\n");
  return 0;
 }

 for (pn = pn_max; pn >= pn_min; pn--) {
  f = clamp(DIV_ROUND_CLOSEST(fxp, 1 << pn), 1, 255);
  fxp_actual = f << pn;
  if (fxp_min <= fxp_actual && fxp_actual <= fxp_max)
   break;
 }

 if (drm_dp_dpcd_writeb(&intel_dp->aux,
          DP_EDP_PWMGEN_BIT_COUNT, pn) < 0) {
  DRM_DEBUG_KMS("Failed to write aux pwmgen bit count\n");
  return 0;
 }
 if (drm_dp_dpcd_writeb(&intel_dp->aux,
          DP_EDP_BACKLIGHT_FREQ_SET, (u8) f) < 0) {
  DRM_DEBUG_KMS("Failed to write aux backlight freq\n");
  return 0;
 }
 return 1;
}
