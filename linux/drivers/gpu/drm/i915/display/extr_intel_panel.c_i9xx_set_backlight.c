
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_5__ {int max; scalar_t__ combination_mode; } ;
struct intel_panel {TYPE_2__ backlight; } ;
struct TYPE_4__ {int dev; } ;
struct intel_connector {struct intel_panel panel; TYPE_1__ base; } ;
struct TYPE_6__ {int pdev; } ;
struct drm_i915_private {TYPE_3__ drm; } ;
struct drm_connector_state {int connector; } ;


 int BACKLIGHT_DUTY_CYCLE_MASK ;
 int BACKLIGHT_DUTY_CYCLE_MASK_PNV ;
 int BLC_PWM_CTL ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 scalar_t__ IS_GEN (struct drm_i915_private*,int) ;
 int LBPC ;
 int WARN_ON (int) ;
 int pci_write_config_byte (int ,int ,int) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_connector* to_intel_connector (int ) ;

__attribute__((used)) static void i9xx_set_backlight(const struct drm_connector_state *conn_state, u32 level)
{
 struct intel_connector *connector = to_intel_connector(conn_state->connector);
 struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 struct intel_panel *panel = &connector->panel;
 u32 tmp, mask;

 WARN_ON(panel->backlight.max == 0);

 if (panel->backlight.combination_mode) {
  u8 lbpc;

  lbpc = level * 0xfe / panel->backlight.max + 1;
  level /= lbpc;
  pci_write_config_byte(dev_priv->drm.pdev, LBPC, lbpc);
 }

 if (IS_GEN(dev_priv, 4)) {
  mask = BACKLIGHT_DUTY_CYCLE_MASK;
 } else {
  level <<= 1;
  mask = BACKLIGHT_DUTY_CYCLE_MASK_PNV;
 }

 tmp = I915_READ(BLC_PWM_CTL) & ~mask;
 I915_WRITE(BLC_PWM_CTL, tmp | level);
}
