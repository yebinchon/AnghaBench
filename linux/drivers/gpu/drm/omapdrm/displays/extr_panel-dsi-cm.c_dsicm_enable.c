
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct panel_drv_data {int lock; TYPE_3__* pdev; struct omap_dss_device* src; } ;
struct omap_dss_device {TYPE_2__* ops; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_4__ {int (* bus_unlock ) (struct omap_dss_device*) ;int (* bus_lock ) (struct omap_dss_device*) ;} ;
struct TYPE_5__ {TYPE_1__ dsi; } ;


 int dev_dbg (int *,char*,int) ;
 int dsicm_bl_power (struct panel_drv_data*,int) ;
 int dsicm_power_on (struct panel_drv_data*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct omap_dss_device*) ;
 int stub2 (struct omap_dss_device*) ;
 struct panel_drv_data* to_panel_data (struct omap_dss_device*) ;

__attribute__((used)) static void dsicm_enable(struct omap_dss_device *dssdev)
{
 struct panel_drv_data *ddata = to_panel_data(dssdev);
 struct omap_dss_device *src = ddata->src;
 int r;

 mutex_lock(&ddata->lock);

 src->ops->dsi.bus_lock(src);

 r = dsicm_power_on(ddata);

 src->ops->dsi.bus_unlock(src);

 if (r)
  goto err;

 mutex_unlock(&ddata->lock);

 dsicm_bl_power(ddata, 1);

 return;
err:
 dev_dbg(&ddata->pdev->dev, "enable failed (%d)\n", r);
 mutex_unlock(&ddata->lock);
}
