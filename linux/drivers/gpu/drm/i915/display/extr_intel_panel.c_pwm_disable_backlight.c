
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pwm; } ;
struct intel_panel {TYPE_1__ backlight; } ;
struct intel_connector {struct intel_panel panel; } ;
struct drm_connector_state {int connector; } ;


 int intel_panel_actually_set_backlight (struct drm_connector_state const*,int ) ;
 int pwm_disable (int ) ;
 struct intel_connector* to_intel_connector (int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void pwm_disable_backlight(const struct drm_connector_state *old_conn_state)
{
 struct intel_connector *connector = to_intel_connector(old_conn_state->connector);
 struct intel_panel *panel = &connector->panel;


 intel_panel_actually_set_backlight(old_conn_state, 0);
 usleep_range(2000, 3000);
 pwm_disable(panel->backlight.pwm);
}
