
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct panel_drv_data {scalar_t__ enable_gpio; } ;
struct omap_dss_device {int dummy; } ;


 int gpiod_set_value_cansleep (scalar_t__,int) ;
 struct panel_drv_data* to_panel_data (struct omap_dss_device*) ;

__attribute__((used)) static void opa362_enable(struct omap_dss_device *dssdev)
{
 struct panel_drv_data *ddata = to_panel_data(dssdev);

 if (ddata->enable_gpio)
  gpiod_set_value_cansleep(ddata->enable_gpio, 1);
}
