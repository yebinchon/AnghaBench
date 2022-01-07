
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int controller; } ;
struct intel_panel {TYPE_2__ backlight; } ;
struct TYPE_3__ {int dev; } ;
struct intel_connector {struct intel_panel panel; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;


 int BXT_BLC_PWM_DUTY (int ) ;
 int I915_READ (int ) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static u32 bxt_get_backlight(struct intel_connector *connector)
{
 struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 struct intel_panel *panel = &connector->panel;

 return I915_READ(BXT_BLC_PWM_DUTY(panel->backlight.controller));
}
