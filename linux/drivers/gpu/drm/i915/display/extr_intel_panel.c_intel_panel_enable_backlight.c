
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int present; } ;
struct intel_panel {TYPE_2__ backlight; } ;
struct TYPE_5__ {int crtc; } ;
struct intel_crtc_state {TYPE_1__ base; } ;
struct TYPE_7__ {int dev; } ;
struct intel_connector {struct intel_panel panel; TYPE_3__ base; } ;
struct drm_i915_private {int backlight_lock; } ;
struct drm_connector_state {int connector; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;
struct TYPE_8__ {int pipe; } ;


 int DRM_DEBUG_KMS (char*,int ) ;
 int __intel_panel_enable_backlight (struct intel_crtc_state const*,struct drm_connector_state const*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pipe_name (int) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_connector* to_intel_connector (int ) ;
 TYPE_4__* to_intel_crtc (int ) ;

void intel_panel_enable_backlight(const struct intel_crtc_state *crtc_state,
      const struct drm_connector_state *conn_state)
{
 struct intel_connector *connector = to_intel_connector(conn_state->connector);
 struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 struct intel_panel *panel = &connector->panel;
 enum pipe pipe = to_intel_crtc(crtc_state->base.crtc)->pipe;

 if (!panel->backlight.present)
  return;

 DRM_DEBUG_KMS("pipe %c\n", pipe_name(pipe));

 mutex_lock(&dev_priv->backlight_lock);

 __intel_panel_enable_backlight(crtc_state, conn_state);

 mutex_unlock(&dev_priv->backlight_lock);
}
