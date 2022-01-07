
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_connector_state {int dummy; } ;


 int intel_panel_actually_set_backlight (struct drm_connector_state const*,int ) ;

__attribute__((used)) static void i9xx_disable_backlight(const struct drm_connector_state *old_conn_state)
{
 intel_panel_actually_set_backlight(old_conn_state, 0);
}
