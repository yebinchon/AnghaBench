
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_8__ {int (* hz_to_pwm ) (struct intel_connector*,int) ;} ;
struct intel_panel {TYPE_4__ backlight; } ;
struct TYPE_5__ {int dev; } ;
struct intel_connector {struct intel_panel panel; TYPE_1__ base; } ;
struct TYPE_6__ {int pwm_freq_hz; } ;
struct TYPE_7__ {TYPE_2__ backlight; } ;
struct drm_i915_private {TYPE_3__ vbt; } ;


 int DRM_DEBUG_KMS (char*,...) ;
 int stub1 (struct intel_connector*,int) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static u32 get_backlight_max_vbt(struct intel_connector *connector)
{
 struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 struct intel_panel *panel = &connector->panel;
 u16 pwm_freq_hz = dev_priv->vbt.backlight.pwm_freq_hz;
 u32 pwm;

 if (!panel->backlight.hz_to_pwm) {
  DRM_DEBUG_KMS("backlight frequency conversion not supported\n");
  return 0;
 }

 if (pwm_freq_hz) {
  DRM_DEBUG_KMS("VBT defined backlight frequency %u Hz\n",
         pwm_freq_hz);
 } else {
  pwm_freq_hz = 200;
  DRM_DEBUG_KMS("default backlight frequency %u Hz\n",
         pwm_freq_hz);
 }

 pwm = panel->backlight.hz_to_pwm(connector, pwm_freq_hz);
 if (!pwm) {
  DRM_DEBUG_KMS("backlight frequency conversion failed\n");
  return 0;
 }

 return pwm;
}
