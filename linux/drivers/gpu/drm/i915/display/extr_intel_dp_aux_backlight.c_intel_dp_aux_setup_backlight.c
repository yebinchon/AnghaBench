
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int max; scalar_t__ level; int enabled; scalar_t__ min; } ;
struct intel_panel {TYPE_1__ backlight; } ;
struct intel_dp {int* edp_dpcd; } ;
struct intel_connector {struct intel_panel panel; TYPE_2__* encoder; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;
struct TYPE_4__ {int base; } ;


 int DP_EDP_BACKLIGHT_BRIGHTNESS_BYTE_COUNT ;
 struct intel_dp* enc_to_intel_dp (int *) ;
 scalar_t__ intel_dp_aux_get_backlight (struct intel_connector*) ;

__attribute__((used)) static int intel_dp_aux_setup_backlight(struct intel_connector *connector,
     enum pipe pipe)
{
 struct intel_dp *intel_dp = enc_to_intel_dp(&connector->encoder->base);
 struct intel_panel *panel = &connector->panel;

 if (intel_dp->edp_dpcd[2] & DP_EDP_BACKLIGHT_BRIGHTNESS_BYTE_COUNT)
  panel->backlight.max = 0xFFFF;
 else
  panel->backlight.max = 0xFF;

 panel->backlight.min = 0;
 panel->backlight.level = intel_dp_aux_get_backlight(connector);

 panel->backlight.enabled = panel->backlight.level != 0;

 return 0;
}
