
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int type; } ;
struct TYPE_6__ {struct drm_device* drm; struct drm_connector* connector; } ;
struct panel_simple {TYPE_3__* desc; TYPE_4__ override_mode; TYPE_1__ base; } ;
struct drm_display_mode {int dummy; } ;
struct drm_device {int dev; } ;
struct TYPE_10__ {int bus_flags; int height_mm; int width_mm; int bpc; } ;
struct drm_connector {TYPE_5__ display_info; } ;
struct TYPE_7__ {int height; int width; } ;
struct TYPE_8__ {int bus_flags; int bus_format; TYPE_2__ size; int bpc; scalar_t__ num_modes; scalar_t__ num_timings; } ;


 int WARN_ON (int) ;
 int dev_err (int ,char*) ;
 int drm_display_info_set_bus_formats (TYPE_5__*,int *,int) ;
 struct drm_display_mode* drm_mode_duplicate (struct drm_device*,TYPE_4__*) ;
 int drm_mode_probed_add (struct drm_connector*,struct drm_display_mode*) ;
 unsigned int panel_simple_get_display_modes (struct panel_simple*) ;
 unsigned int panel_simple_get_timings_modes (struct panel_simple*) ;

__attribute__((used)) static int panel_simple_get_non_edid_modes(struct panel_simple *panel)
{
 struct drm_connector *connector = panel->base.connector;
 struct drm_device *drm = panel->base.drm;
 struct drm_display_mode *mode;
 bool has_override = panel->override_mode.type;
 unsigned int num = 0;

 if (!panel->desc)
  return 0;

 if (has_override) {
  mode = drm_mode_duplicate(drm, &panel->override_mode);
  if (mode) {
   drm_mode_probed_add(connector, mode);
   num = 1;
  } else {
   dev_err(drm->dev, "failed to add override mode\n");
  }
 }


 if (num == 0 && panel->desc->num_timings)
  num = panel_simple_get_timings_modes(panel);







 WARN_ON(panel->desc->num_timings && panel->desc->num_modes);
 if (num == 0)
  num = panel_simple_get_display_modes(panel);

 connector->display_info.bpc = panel->desc->bpc;
 connector->display_info.width_mm = panel->desc->size.width;
 connector->display_info.height_mm = panel->desc->size.height;
 if (panel->desc->bus_format)
  drm_display_info_set_bus_formats(&connector->display_info,
       &panel->desc->bus_format, 1);
 connector->display_info.bus_flags = panel->desc->bus_flags;

 return num;
}
