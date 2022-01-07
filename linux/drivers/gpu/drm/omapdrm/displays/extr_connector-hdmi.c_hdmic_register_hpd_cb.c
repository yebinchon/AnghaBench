
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct panel_drv_data {void (* hpd_cb ) (void*,int) ;int hpd_lock; void* hpd_cb_data; } ;
struct omap_dss_device {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct panel_drv_data* to_panel_data (struct omap_dss_device*) ;

__attribute__((used)) static void hdmic_register_hpd_cb(struct omap_dss_device *dssdev,
      void (*cb)(void *cb_data,
         enum drm_connector_status status),
      void *cb_data)
{
 struct panel_drv_data *ddata = to_panel_data(dssdev);

 mutex_lock(&ddata->hpd_lock);
 ddata->hpd_cb = cb;
 ddata->hpd_cb_data = cb_data;
 mutex_unlock(&ddata->hpd_lock);
}
