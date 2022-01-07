
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int (* set ) (struct drm_connector_state const*,int ) ;} ;
struct intel_panel {TYPE_1__ backlight; } ;
struct intel_connector {struct intel_panel panel; } ;
struct drm_connector_state {int connector; } ;


 int DRM_DEBUG_DRIVER (char*,int ) ;
 int intel_panel_compute_brightness (struct intel_connector*,int ) ;
 int stub1 (struct drm_connector_state const*,int ) ;
 struct intel_connector* to_intel_connector (int ) ;

__attribute__((used)) static void
intel_panel_actually_set_backlight(const struct drm_connector_state *conn_state, u32 level)
{
 struct intel_connector *connector = to_intel_connector(conn_state->connector);
 struct intel_panel *panel = &connector->panel;

 DRM_DEBUG_DRIVER("set backlight PWM = %d\n", level);

 level = intel_panel_compute_brightness(connector, level);
 panel->backlight.set(conn_state, level);
}
