
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct videomode {int dummy; } ;
struct TYPE_2__ {int type; } ;
struct panel_simple {TYPE_1__ override_mode; struct panel_desc* desc; } ;
struct panel_desc {int num_modes; unsigned int num_timings; struct display_timing* timings; } ;
struct display_timing {scalar_t__ flags; } ;
struct device {int dummy; } ;


 int DRM_MODE_TYPE_DRIVER ;
 int DRM_MODE_TYPE_PREFERRED ;
 int PANEL_SIMPLE_BOUNDS_CHECK (struct display_timing const*,struct display_timing const*,int ) ;
 scalar_t__ WARN_ON (int) ;
 int dev_err (struct device*,char*) ;
 int drm_display_mode_from_videomode (struct videomode*,TYPE_1__*) ;
 int hactive ;
 int hback_porch ;
 int hfront_porch ;
 int hsync_len ;
 int vactive ;
 int vback_porch ;
 int vfront_porch ;
 int videomode_from_timing (struct display_timing const*,struct videomode*) ;
 int vsync_len ;

__attribute__((used)) static void panel_simple_parse_panel_timing_node(struct device *dev,
       struct panel_simple *panel,
       const struct display_timing *ot)
{
 const struct panel_desc *desc = panel->desc;
 struct videomode vm;
 unsigned int i;

 if (WARN_ON(desc->num_modes)) {
  dev_err(dev, "Reject override mode: panel has a fixed mode\n");
  return;
 }
 if (WARN_ON(!desc->num_timings)) {
  dev_err(dev, "Reject override mode: no timings specified\n");
  return;
 }

 for (i = 0; i < panel->desc->num_timings; i++) {
  const struct display_timing *dt = &panel->desc->timings[i];

  if (!PANEL_SIMPLE_BOUNDS_CHECK(ot, dt, hactive) ||
      !PANEL_SIMPLE_BOUNDS_CHECK(ot, dt, hfront_porch) ||
      !PANEL_SIMPLE_BOUNDS_CHECK(ot, dt, hback_porch) ||
      !PANEL_SIMPLE_BOUNDS_CHECK(ot, dt, hsync_len) ||
      !PANEL_SIMPLE_BOUNDS_CHECK(ot, dt, vactive) ||
      !PANEL_SIMPLE_BOUNDS_CHECK(ot, dt, vfront_porch) ||
      !PANEL_SIMPLE_BOUNDS_CHECK(ot, dt, vback_porch) ||
      !PANEL_SIMPLE_BOUNDS_CHECK(ot, dt, vsync_len))
   continue;

  if (ot->flags != dt->flags)
   continue;

  videomode_from_timing(ot, &vm);
  drm_display_mode_from_videomode(&vm, &panel->override_mode);
  panel->override_mode.type |= DRM_MODE_TYPE_DRIVER |
          DRM_MODE_TYPE_PREFERRED;
  break;
 }

 if (WARN_ON(!panel->override_mode.type))
  dev_err(dev, "Reject override mode: No display_timing found\n");
}
