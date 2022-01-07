
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_5__ {scalar_t__ combination_mode; } ;
struct intel_panel {TYPE_2__ backlight; } ;
struct TYPE_4__ {int dev; } ;
struct intel_connector {struct intel_panel panel; TYPE_1__ base; } ;
struct TYPE_6__ {int pdev; } ;
struct drm_i915_private {TYPE_3__ drm; } ;


 int BACKLIGHT_DUTY_CYCLE_MASK ;
 int BLC_PWM_CTL ;
 int I915_READ (int ) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 int LBPC ;
 int pci_read_config_byte (int ,int ,int*) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static u32 i9xx_get_backlight(struct intel_connector *connector)
{
 struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 struct intel_panel *panel = &connector->panel;
 u32 val;

 val = I915_READ(BLC_PWM_CTL) & BACKLIGHT_DUTY_CYCLE_MASK;
 if (INTEL_GEN(dev_priv) < 4)
  val >>= 1;

 if (panel->backlight.combination_mode) {
  u8 lbpc;

  pci_read_config_byte(dev_priv->drm.pdev, LBPC, &lbpc);
  val *= lbpc;
 }

 return val;
}
