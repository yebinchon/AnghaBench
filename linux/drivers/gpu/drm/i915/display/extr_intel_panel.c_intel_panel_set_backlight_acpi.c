
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {scalar_t__ max; scalar_t__ enabled; TYPE_3__* device; int level; int present; } ;
struct intel_panel {TYPE_4__ backlight; } ;
struct TYPE_5__ {int dev; } ;
struct intel_connector {struct intel_panel panel; TYPE_1__ base; } ;
struct drm_i915_private {int backlight_lock; } ;
struct drm_connector_state {int crtc; int connector; } ;
struct TYPE_6__ {int max_brightness; int brightness; } ;
struct TYPE_7__ {TYPE_2__ props; } ;


 int WARN_ON (int) ;
 int clamp_user_to_hw (struct intel_connector*,int ,int ) ;
 int intel_panel_actually_set_backlight (struct drm_connector_state const*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int scale_hw_to_user (struct intel_connector*,int ,int ) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_connector* to_intel_connector (int ) ;

void intel_panel_set_backlight_acpi(const struct drm_connector_state *conn_state,
        u32 user_level, u32 user_max)
{
 struct intel_connector *connector = to_intel_connector(conn_state->connector);
 struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 struct intel_panel *panel = &connector->panel;
 u32 hw_level;







 if (!panel->backlight.present || !conn_state->crtc)
  return;

 mutex_lock(&dev_priv->backlight_lock);

 WARN_ON(panel->backlight.max == 0);

 hw_level = clamp_user_to_hw(connector, user_level, user_max);
 panel->backlight.level = hw_level;

 if (panel->backlight.device)
  panel->backlight.device->props.brightness =
   scale_hw_to_user(connector,
      panel->backlight.level,
      panel->backlight.device->props.max_brightness);

 if (panel->backlight.enabled)
  intel_panel_actually_set_backlight(conn_state, hw_level);

 mutex_unlock(&dev_priv->backlight_lock);
}
