
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct panel_drv_data {int hpd_gpio; } ;
struct omap_dss_device {int dummy; } ;


 int gpiod_get_value_cansleep (int ) ;
 struct panel_drv_data* to_panel_data (struct omap_dss_device*) ;

__attribute__((used)) static bool tpd_detect(struct omap_dss_device *dssdev)
{
 struct panel_drv_data *ddata = to_panel_data(dssdev);

 return gpiod_get_value_cansleep(ddata->hpd_gpio);
}
