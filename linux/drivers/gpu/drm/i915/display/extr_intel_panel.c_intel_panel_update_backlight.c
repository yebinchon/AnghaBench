
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int enabled; int present; } ;
struct intel_panel {TYPE_2__ backlight; } ;
struct intel_encoder {int dummy; } ;
struct intel_crtc_state {int dummy; } ;
struct TYPE_3__ {int dev; } ;
struct intel_connector {struct intel_panel panel; TYPE_1__ base; } ;
struct drm_i915_private {int backlight_lock; } ;
struct drm_connector_state {int connector; } ;


 int __intel_panel_enable_backlight (struct intel_crtc_state const*,struct drm_connector_state const*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_connector* to_intel_connector (int ) ;

void intel_panel_update_backlight(struct intel_encoder *encoder,
      const struct intel_crtc_state *crtc_state,
      const struct drm_connector_state *conn_state)
{
 struct intel_connector *connector = to_intel_connector(conn_state->connector);
 struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 struct intel_panel *panel = &connector->panel;

 if (!panel->backlight.present)
  return;

 mutex_lock(&dev_priv->backlight_lock);
 if (!panel->backlight.enabled)
  __intel_panel_enable_backlight(crtc_state, conn_state);

 mutex_unlock(&dev_priv->backlight_lock);
}
