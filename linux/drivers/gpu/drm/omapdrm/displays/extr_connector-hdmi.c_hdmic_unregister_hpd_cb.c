
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct panel_drv_data {int hpd_lock; int * hpd_cb_data; int * hpd_cb; } ;
struct omap_dss_device {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct panel_drv_data* to_panel_data (struct omap_dss_device*) ;

__attribute__((used)) static void hdmic_unregister_hpd_cb(struct omap_dss_device *dssdev)
{
 struct panel_drv_data *ddata = to_panel_data(dssdev);

 mutex_lock(&ddata->hpd_lock);
 ddata->hpd_cb = ((void*)0);
 ddata->hpd_cb_data = ((void*)0);
 mutex_unlock(&ddata->hpd_lock);
}
