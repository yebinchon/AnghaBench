
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {struct drm_connector* private; } ;
struct intel_dp {int backlight_off_delay; int backlight_on_delay; int panel_power_down_delay; int panel_power_up_delay; } ;
struct drm_connector {scalar_t__ status; } ;
struct TYPE_2__ {int base; } ;


 int ENODEV ;
 scalar_t__ connector_status_connected ;
 struct intel_dp* enc_to_intel_dp (int *) ;
 TYPE_1__* intel_attached_encoder (struct drm_connector*) ;
 int seq_printf (struct seq_file*,char*,int ) ;

__attribute__((used)) static int i915_panel_show(struct seq_file *m, void *data)
{
 struct drm_connector *connector = m->private;
 struct intel_dp *intel_dp =
  enc_to_intel_dp(&intel_attached_encoder(connector)->base);

 if (connector->status != connector_status_connected)
  return -ENODEV;

 seq_printf(m, "Panel power up delay: %d\n",
     intel_dp->panel_power_up_delay);
 seq_printf(m, "Panel power down delay: %d\n",
     intel_dp->panel_power_down_delay);
 seq_printf(m, "Backlight on delay: %d\n",
     intel_dp->backlight_on_delay);
 seq_printf(m, "Backlight off delay: %d\n",
     intel_dp->backlight_off_delay);

 return 0;
}
