
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {int kobj; } ;
struct platform_device {struct device dev; } ;
struct omap_dss_device {int display; int caps; int ops_flags; int of_ports; int owner; int type; int * driver; int * ops; struct device* dev; } ;
struct TYPE_3__ {int hactive; int vactive; int pixelclock; } ;
struct panel_drv_data {TYPE_2__* extbldev; int workqueue; struct backlight_device* bldev; scalar_t__ use_dsi_backlight; int ulps_work; int te_timeout_work; scalar_t__ ext_te_gpio; int do_update; int lock; struct omap_dss_device dssdev; TYPE_1__ vm; struct platform_device* pdev; } ;
struct backlight_properties {int max_brightness; int type; int member_0; } ;
struct backlight_device {int dummy; } ;
struct TYPE_4__ {int dev; } ;


 int BACKLIGHT_RAW ;
 int BIT (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DEFERRABLE_WORK (int *,int ) ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int IRQF_TRIGGER_RISING ;
 scalar_t__ IS_ERR (struct backlight_device*) ;
 int OMAP_DISPLAY_TYPE_DSI ;
 int OMAP_DSS_DEVICE_OP_MODES ;
 int OMAP_DSS_DISPLAY_CAP_MANUAL_UPDATE ;
 int OMAP_DSS_DISPLAY_CAP_TEAR_ELIM ;
 int PTR_ERR (struct backlight_device*) ;
 int THIS_MODULE ;
 int atomic_set (int *,int ) ;
 int create_singlethread_workqueue (char*) ;
 int destroy_workqueue (int ) ;
 int dev_dbg (struct device*,char*) ;
 int dev_err (struct device*,char*) ;
 int dev_name (struct device*) ;
 struct backlight_device* devm_backlight_device_register (struct device*,int ,struct device*,struct panel_drv_data*,int *,struct backlight_properties*) ;
 struct panel_drv_data* devm_kzalloc (struct device*,int,int ) ;
 int devm_request_irq (struct device*,int ,int ,int ,char*,struct panel_drv_data*) ;
 int dsicm_attr_group ;
 int dsicm_bl_ops ;
 int dsicm_dss_driver ;
 int dsicm_hw_reset (struct panel_drv_data*) ;
 int dsicm_ops ;
 int dsicm_probe_of (struct platform_device*) ;
 int dsicm_te_isr ;
 int dsicm_te_timeout_work_callback ;
 int dsicm_ulps_work ;
 int gpiod_to_irq (scalar_t__) ;
 int mutex_init (int *) ;
 int omapdss_device_register (struct omap_dss_device*) ;
 int omapdss_display_init (struct omap_dss_device*) ;
 int platform_set_drvdata (struct platform_device*,struct panel_drv_data*) ;
 int put_device (int *) ;
 int sysfs_create_group (int *,int *) ;

__attribute__((used)) static int dsicm_probe(struct platform_device *pdev)
{
 struct panel_drv_data *ddata;
 struct backlight_device *bldev = ((void*)0);
 struct device *dev = &pdev->dev;
 struct omap_dss_device *dssdev;
 int r;

 dev_dbg(dev, "probe\n");

 ddata = devm_kzalloc(dev, sizeof(*ddata), GFP_KERNEL);
 if (!ddata)
  return -ENOMEM;

 platform_set_drvdata(pdev, ddata);
 ddata->pdev = pdev;

 ddata->vm.hactive = 864;
 ddata->vm.vactive = 480;
 ddata->vm.pixelclock = 864 * 480 * 60;

 r = dsicm_probe_of(pdev);
 if (r)
  return r;

 dssdev = &ddata->dssdev;
 dssdev->dev = dev;
 dssdev->ops = &dsicm_ops;
 dssdev->driver = &dsicm_dss_driver;
 dssdev->type = OMAP_DISPLAY_TYPE_DSI;
 dssdev->display = 1;
 dssdev->owner = THIS_MODULE;
 dssdev->of_ports = BIT(0);
 dssdev->ops_flags = OMAP_DSS_DEVICE_OP_MODES;

 dssdev->caps = OMAP_DSS_DISPLAY_CAP_MANUAL_UPDATE |
  OMAP_DSS_DISPLAY_CAP_TEAR_ELIM;

 omapdss_display_init(dssdev);
 omapdss_device_register(dssdev);

 mutex_init(&ddata->lock);

 atomic_set(&ddata->do_update, 0);

 if (ddata->ext_te_gpio) {
  r = devm_request_irq(dev, gpiod_to_irq(ddata->ext_te_gpio),
    dsicm_te_isr,
    IRQF_TRIGGER_RISING,
    "taal vsync", ddata);

  if (r) {
   dev_err(dev, "IRQ request failed\n");
   goto err_reg;
  }

  INIT_DEFERRABLE_WORK(&ddata->te_timeout_work,
     dsicm_te_timeout_work_callback);

  dev_dbg(dev, "Using GPIO TE\n");
 }

 ddata->workqueue = create_singlethread_workqueue("dsicm_wq");
 if (!ddata->workqueue) {
  r = -ENOMEM;
  goto err_reg;
 }
 INIT_DELAYED_WORK(&ddata->ulps_work, dsicm_ulps_work);

 dsicm_hw_reset(ddata);

 if (ddata->use_dsi_backlight) {
  struct backlight_properties props = { 0 };
  props.max_brightness = 255;
  props.type = BACKLIGHT_RAW;

  bldev = devm_backlight_device_register(dev, dev_name(dev),
   dev, ddata, &dsicm_bl_ops, &props);
  if (IS_ERR(bldev)) {
   r = PTR_ERR(bldev);
   goto err_bl;
  }

  ddata->bldev = bldev;
 }

 r = sysfs_create_group(&dev->kobj, &dsicm_attr_group);
 if (r) {
  dev_err(dev, "failed to create sysfs files\n");
  goto err_bl;
 }

 return 0;

err_bl:
 destroy_workqueue(ddata->workqueue);
err_reg:
 if (ddata->extbldev)
  put_device(&ddata->extbldev->dev);

 return r;
}
