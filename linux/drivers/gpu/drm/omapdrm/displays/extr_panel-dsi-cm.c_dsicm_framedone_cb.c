
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct panel_drv_data {TYPE_1__* pdev; struct omap_dss_device* src; } ;
struct omap_dss_device {TYPE_3__* ops; } ;
struct TYPE_5__ {int (* bus_unlock ) (struct omap_dss_device*) ;} ;
struct TYPE_6__ {TYPE_2__ dsi; } ;
struct TYPE_4__ {int dev; } ;


 int dev_dbg (int *,char*,int) ;
 int stub1 (struct omap_dss_device*) ;

__attribute__((used)) static void dsicm_framedone_cb(int err, void *data)
{
 struct panel_drv_data *ddata = data;
 struct omap_dss_device *src = ddata->src;

 dev_dbg(&ddata->pdev->dev, "framedone, err %d\n", err);
 src->ops->dsi.bus_unlock(src);
}
