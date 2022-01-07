
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dev; } ;
struct intel_connector {TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;


 int BACKLIGHT_DUTY_CYCLE_MASK ;
 int BLC_PWM_PCH_CTL2 ;
 int I915_READ (int ) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static u32 lpt_get_backlight(struct intel_connector *connector)
{
 struct drm_i915_private *dev_priv = to_i915(connector->base.dev);

 return I915_READ(BLC_PWM_PCH_CTL2) & BACKLIGHT_DUTY_CYCLE_MASK;
}
