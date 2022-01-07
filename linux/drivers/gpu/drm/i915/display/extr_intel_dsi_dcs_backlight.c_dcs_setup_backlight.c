
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* level; void* max; } ;
struct intel_panel {TYPE_1__ backlight; } ;
struct intel_connector {struct intel_panel panel; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 void* PANEL_PWM_MAX_VALUE ;

__attribute__((used)) static int dcs_setup_backlight(struct intel_connector *connector,
          enum pipe unused)
{
 struct intel_panel *panel = &connector->panel;

 panel->backlight.max = PANEL_PWM_MAX_VALUE;
 panel->backlight.level = PANEL_PWM_MAX_VALUE;

 return 0;
}
