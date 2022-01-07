
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct omap_dss_device {int display; int of_ports; int owner; int type; int * dev; int * ops; } ;
struct panel_drv_data {struct omap_dss_device dssdev; int * dev; } ;


 int BIT (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int OMAP_DISPLAY_TYPE_VENC ;
 int THIS_MODULE ;
 struct panel_drv_data* devm_kzalloc (int *,int,int ) ;
 int omapdss_device_register (struct omap_dss_device*) ;
 int omapdss_display_init (struct omap_dss_device*) ;
 int platform_set_drvdata (struct platform_device*,struct panel_drv_data*) ;
 int tvc_ops ;

__attribute__((used)) static int tvc_probe(struct platform_device *pdev)
{
 struct panel_drv_data *ddata;
 struct omap_dss_device *dssdev;

 ddata = devm_kzalloc(&pdev->dev, sizeof(*ddata), GFP_KERNEL);
 if (!ddata)
  return -ENOMEM;

 platform_set_drvdata(pdev, ddata);
 ddata->dev = &pdev->dev;

 dssdev = &ddata->dssdev;
 dssdev->ops = &tvc_ops;
 dssdev->dev = &pdev->dev;
 dssdev->type = OMAP_DISPLAY_TYPE_VENC;
 dssdev->display = 1;
 dssdev->owner = THIS_MODULE;
 dssdev->of_ports = BIT(0);

 omapdss_display_init(dssdev);
 omapdss_device_register(dssdev);

 return 0;
}
