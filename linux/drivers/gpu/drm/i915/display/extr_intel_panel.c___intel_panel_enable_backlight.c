
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ max; scalar_t__ level; scalar_t__ min; int enabled; TYPE_2__* device; int (* enable ) (struct intel_crtc_state const*,struct drm_connector_state const*) ;} ;
struct intel_panel {TYPE_3__ backlight; } ;
struct intel_crtc_state {int dummy; } ;
struct intel_connector {struct intel_panel panel; } ;
struct drm_connector_state {int connector; } ;
struct TYPE_4__ {int power; int max_brightness; int brightness; } ;
struct TYPE_5__ {TYPE_1__ props; } ;


 int FB_BLANK_UNBLANK ;
 int WARN_ON (int) ;
 int scale_hw_to_user (struct intel_connector*,scalar_t__,int ) ;
 int stub1 (struct intel_crtc_state const*,struct drm_connector_state const*) ;
 struct intel_connector* to_intel_connector (int ) ;

__attribute__((used)) static void __intel_panel_enable_backlight(const struct intel_crtc_state *crtc_state,
        const struct drm_connector_state *conn_state)
{
 struct intel_connector *connector = to_intel_connector(conn_state->connector);
 struct intel_panel *panel = &connector->panel;

 WARN_ON(panel->backlight.max == 0);

 if (panel->backlight.level <= panel->backlight.min) {
  panel->backlight.level = panel->backlight.max;
  if (panel->backlight.device)
   panel->backlight.device->props.brightness =
    scale_hw_to_user(connector,
       panel->backlight.level,
       panel->backlight.device->props.max_brightness);
 }

 panel->backlight.enable(crtc_state, conn_state);
 panel->backlight.enabled = 1;
 if (panel->backlight.device)
  panel->backlight.device->props.power = FB_BLANK_UNBLANK;
}
