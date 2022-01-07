
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct panel_drv_data {int hpd_lock; int hpd_cb_data; int (* hpd_cb ) (int ,int) ;int dssdev; } ;
typedef int irqreturn_t ;
typedef enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;


 int IRQ_HANDLED ;
 int connector_status_connected ;
 int connector_status_disconnected ;
 scalar_t__ hdmic_detect (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (int ,int) ;

__attribute__((used)) static irqreturn_t hdmic_hpd_isr(int irq, void *data)
{
 struct panel_drv_data *ddata = data;

 mutex_lock(&ddata->hpd_lock);
 if (ddata->hpd_cb) {
  enum drm_connector_status status;

  if (hdmic_detect(&ddata->dssdev))
   status = connector_status_connected;
  else
   status = connector_status_disconnected;

  ddata->hpd_cb(ddata->hpd_cb_data, status);
 }
 mutex_unlock(&ddata->hpd_lock);

 return IRQ_HANDLED;
}
