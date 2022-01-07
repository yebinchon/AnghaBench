
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct panel_drv_data {int ulps_enabled; TYPE_3__* pdev; scalar_t__ ext_te_gpio; struct omap_dss_device* src; } ;
struct omap_dss_device {TYPE_2__* ops; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_4__ {int (* disable ) (struct omap_dss_device*,int,int) ;} ;
struct TYPE_5__ {TYPE_1__ dsi; } ;


 int _dsicm_enable_te (struct panel_drv_data*,int) ;
 int dev_err (int *,char*) ;
 int disable_irq (int ) ;
 int dsicm_cancel_ulps_work (struct panel_drv_data*) ;
 int dsicm_panel_reset (struct panel_drv_data*) ;
 int dsicm_queue_ulps_work (struct panel_drv_data*) ;
 int gpiod_to_irq (scalar_t__) ;
 int stub1 (struct omap_dss_device*,int,int) ;

__attribute__((used)) static int dsicm_enter_ulps(struct panel_drv_data *ddata)
{
 struct omap_dss_device *src = ddata->src;
 int r;

 if (ddata->ulps_enabled)
  return 0;

 dsicm_cancel_ulps_work(ddata);

 r = _dsicm_enable_te(ddata, 0);
 if (r)
  goto err;

 if (ddata->ext_te_gpio)
  disable_irq(gpiod_to_irq(ddata->ext_te_gpio));

 src->ops->dsi.disable(src, 0, 1);

 ddata->ulps_enabled = 1;

 return 0;

err:
 dev_err(&ddata->pdev->dev, "enter ULPS failed");
 dsicm_panel_reset(ddata);

 ddata->ulps_enabled = 0;

 dsicm_queue_ulps_work(ddata);

 return r;
}
