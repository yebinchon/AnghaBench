
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct panel_drv_data {int ls_oe_gpio; int ct_cp_hpd_gpio; } ;
struct omap_dss_device {int next; } ;


 int gpiod_set_value_cansleep (int ,int ) ;
 int omapdss_device_disconnect (struct omap_dss_device*,int ) ;
 struct panel_drv_data* to_panel_data (struct omap_dss_device*) ;

__attribute__((used)) static void tpd_disconnect(struct omap_dss_device *src,
      struct omap_dss_device *dst)
{
 struct panel_drv_data *ddata = to_panel_data(dst);

 gpiod_set_value_cansleep(ddata->ct_cp_hpd_gpio, 0);
 gpiod_set_value_cansleep(ddata->ls_oe_gpio, 0);

 omapdss_device_disconnect(dst, dst->next);
}
