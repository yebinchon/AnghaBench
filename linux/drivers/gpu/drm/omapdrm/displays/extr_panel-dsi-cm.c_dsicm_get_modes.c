
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct panel_drv_data {int vm; int height_mm; int width_mm; } ;
struct omap_dss_device {int dummy; } ;
struct TYPE_2__ {int height_mm; int width_mm; } ;
struct drm_connector {TYPE_1__ display_info; } ;


 int omapdss_display_get_modes (struct drm_connector*,int *) ;
 struct panel_drv_data* to_panel_data (struct omap_dss_device*) ;

__attribute__((used)) static int dsicm_get_modes(struct omap_dss_device *dssdev,
      struct drm_connector *connector)
{
 struct panel_drv_data *ddata = to_panel_data(dssdev);

 connector->display_info.width_mm = ddata->width_mm;
 connector->display_info.height_mm = ddata->height_mm;

 return omapdss_display_get_modes(connector, &ddata->vm);
}
