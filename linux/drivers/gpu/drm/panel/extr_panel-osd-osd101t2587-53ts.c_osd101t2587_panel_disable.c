
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct osd101t2587_panel {int enabled; int dsi; int backlight; } ;
struct drm_panel {int dummy; } ;


 int backlight_disable (int ) ;
 int mipi_dsi_shutdown_peripheral (int ) ;
 struct osd101t2587_panel* ti_osd_panel (struct drm_panel*) ;

__attribute__((used)) static int osd101t2587_panel_disable(struct drm_panel *panel)
{
 struct osd101t2587_panel *osd101t2587 = ti_osd_panel(panel);
 int ret;

 if (!osd101t2587->enabled)
  return 0;

 backlight_disable(osd101t2587->backlight);

 ret = mipi_dsi_shutdown_peripheral(osd101t2587->dsi);

 osd101t2587->enabled = 0;

 return ret;
}
