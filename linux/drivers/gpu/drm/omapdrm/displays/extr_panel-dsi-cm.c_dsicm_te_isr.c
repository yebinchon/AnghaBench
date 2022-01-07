
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct panel_drv_data {TYPE_1__* pdev; int channel; int te_timeout_work; int do_update; struct omap_dss_device* src; } ;
struct omap_dss_device {TYPE_3__* ops; } ;
typedef int irqreturn_t ;
struct TYPE_5__ {int (* update ) (struct omap_dss_device*,int ,int ,struct panel_drv_data*) ;int (* bus_unlock ) (struct omap_dss_device*) ;} ;
struct TYPE_6__ {TYPE_2__ dsi; } ;
struct TYPE_4__ {int dev; } ;


 int IRQ_HANDLED ;
 int atomic_cmpxchg (int *,int,int ) ;
 int cancel_delayed_work (int *) ;
 int dev_err (int *,char*) ;
 int dsicm_framedone_cb ;
 int stub1 (struct omap_dss_device*,int ,int ,struct panel_drv_data*) ;
 int stub2 (struct omap_dss_device*) ;

__attribute__((used)) static irqreturn_t dsicm_te_isr(int irq, void *data)
{
 struct panel_drv_data *ddata = data;
 struct omap_dss_device *src = ddata->src;
 int old;
 int r;

 old = atomic_cmpxchg(&ddata->do_update, 1, 0);

 if (old) {
  cancel_delayed_work(&ddata->te_timeout_work);

  r = src->ops->dsi.update(src, ddata->channel, dsicm_framedone_cb,
    ddata);
  if (r)
   goto err;
 }

 return IRQ_HANDLED;
err:
 dev_err(&ddata->pdev->dev, "start update failed\n");
 src->ops->dsi.bus_unlock(src);
 return IRQ_HANDLED;
}
