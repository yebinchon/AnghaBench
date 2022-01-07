
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int level; int pwm; } ;
struct intel_panel {TYPE_1__ backlight; } ;
struct intel_crtc_state {int dummy; } ;
struct intel_connector {struct intel_panel panel; } ;
struct drm_connector_state {int connector; } ;


 int intel_panel_actually_set_backlight (struct drm_connector_state const*,int ) ;
 int pwm_enable (int ) ;
 struct intel_connector* to_intel_connector (int ) ;

__attribute__((used)) static void pwm_enable_backlight(const struct intel_crtc_state *crtc_state,
     const struct drm_connector_state *conn_state)
{
 struct intel_connector *connector = to_intel_connector(conn_state->connector);
 struct intel_panel *panel = &connector->panel;

 pwm_enable(panel->backlight.pwm);
 intel_panel_actually_set_backlight(conn_state, panel->backlight.level);
}
