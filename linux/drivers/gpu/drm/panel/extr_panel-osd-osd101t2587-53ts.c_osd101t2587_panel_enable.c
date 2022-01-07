
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct osd101t2587_panel {int enabled; int backlight; int dsi; } ;
struct drm_panel {int dummy; } ;


 int backlight_enable (int ) ;
 int mipi_dsi_turn_on_peripheral (int ) ;
 struct osd101t2587_panel* ti_osd_panel (struct drm_panel*) ;

__attribute__((used)) static int osd101t2587_panel_enable(struct drm_panel *panel)
{
 struct osd101t2587_panel *osd101t2587 = ti_osd_panel(panel);
 int ret;

 if (osd101t2587->enabled)
  return 0;

 ret = mipi_dsi_turn_on_peripheral(osd101t2587->dsi);
 if (ret)
  return ret;

 backlight_enable(osd101t2587->backlight);

 osd101t2587->enabled = 1;

 return ret;
}
