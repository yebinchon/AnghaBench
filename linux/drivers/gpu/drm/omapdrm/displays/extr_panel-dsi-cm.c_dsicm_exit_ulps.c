
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct panel_drv_data {int ulps_enabled; scalar_t__ ext_te_gpio; TYPE_3__* pdev; int channel; struct omap_dss_device* src; } ;
struct omap_dss_device {TYPE_2__* ops; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_4__ {int (* enable_hs ) (struct omap_dss_device*,int ,int) ;} ;
struct TYPE_5__ {TYPE_1__ dsi; int (* enable ) (struct omap_dss_device*) ;} ;


 int _dsicm_enable_te (struct panel_drv_data*,int) ;
 int dev_err (int *,char*) ;
 int dsicm_panel_reset (struct panel_drv_data*) ;
 int dsicm_queue_ulps_work (struct panel_drv_data*) ;
 int enable_irq (int ) ;
 int gpiod_to_irq (scalar_t__) ;
 int stub1 (struct omap_dss_device*) ;
 int stub2 (struct omap_dss_device*,int ,int) ;

__attribute__((used)) static int dsicm_exit_ulps(struct panel_drv_data *ddata)
{
 struct omap_dss_device *src = ddata->src;
 int r;

 if (!ddata->ulps_enabled)
  return 0;

 src->ops->enable(src);
 src->ops->dsi.enable_hs(src, ddata->channel, 1);

 r = _dsicm_enable_te(ddata, 1);
 if (r) {
  dev_err(&ddata->pdev->dev, "failed to re-enable TE");
  goto err2;
 }

 if (ddata->ext_te_gpio)
  enable_irq(gpiod_to_irq(ddata->ext_te_gpio));

 dsicm_queue_ulps_work(ddata);

 ddata->ulps_enabled = 0;

 return 0;

err2:
 dev_err(&ddata->pdev->dev, "failed to exit ULPS");

 r = dsicm_panel_reset(ddata);
 if (!r) {
  if (ddata->ext_te_gpio)
   enable_irq(gpiod_to_irq(ddata->ext_te_gpio));
  ddata->ulps_enabled = 0;
 }

 dsicm_queue_ulps_work(ddata);

 return r;
}
