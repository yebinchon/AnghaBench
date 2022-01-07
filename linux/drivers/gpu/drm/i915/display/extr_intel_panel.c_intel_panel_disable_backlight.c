
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int enabled; int (* disable ) (struct drm_connector_state const*) ;TYPE_4__* device; int present; } ;
struct intel_panel {TYPE_5__ backlight; } ;
struct TYPE_6__ {int dev; } ;
struct intel_connector {struct intel_panel panel; TYPE_1__ base; } ;
struct TYPE_7__ {scalar_t__ switch_power_state; } ;
struct drm_i915_private {int backlight_lock; TYPE_2__ drm; } ;
struct drm_connector_state {int connector; } ;
struct TYPE_8__ {int power; } ;
struct TYPE_9__ {TYPE_3__ props; } ;


 int DRM_DEBUG_DRIVER (char*) ;
 scalar_t__ DRM_SWITCH_POWER_CHANGING ;
 int FB_BLANK_POWERDOWN ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct drm_connector_state const*) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_connector* to_intel_connector (int ) ;

void intel_panel_disable_backlight(const struct drm_connector_state *old_conn_state)
{
 struct intel_connector *connector = to_intel_connector(old_conn_state->connector);
 struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 struct intel_panel *panel = &connector->panel;

 if (!panel->backlight.present)
  return;







 if (dev_priv->drm.switch_power_state == DRM_SWITCH_POWER_CHANGING) {
  DRM_DEBUG_DRIVER("Skipping backlight disable on vga switch\n");
  return;
 }

 mutex_lock(&dev_priv->backlight_lock);

 if (panel->backlight.device)
  panel->backlight.device->props.power = FB_BLANK_POWERDOWN;
 panel->backlight.enabled = 0;
 panel->backlight.disable(old_conn_state);

 mutex_unlock(&dev_priv->backlight_lock);
}
