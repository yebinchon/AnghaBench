
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct panel_drv_data {int ls_oe_gpio; int ct_cp_hpd_gpio; } ;
struct omap_dss_device {int next; int dss; } ;


 int gpiod_set_value_cansleep (int ,int) ;
 int omapdss_device_connect (int ,struct omap_dss_device*,int ) ;
 struct panel_drv_data* to_panel_data (struct omap_dss_device*) ;
 int udelay (int) ;

__attribute__((used)) static int tpd_connect(struct omap_dss_device *src,
         struct omap_dss_device *dst)
{
 struct panel_drv_data *ddata = to_panel_data(dst);
 int r;

 r = omapdss_device_connect(dst->dss, dst, dst->next);
 if (r)
  return r;

 gpiod_set_value_cansleep(ddata->ct_cp_hpd_gpio, 1);
 gpiod_set_value_cansleep(ddata->ls_oe_gpio, 1);


 udelay(300);

 return 0;
}
