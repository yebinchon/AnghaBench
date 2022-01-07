
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct omap_dss_device {int display; int ops_flags; int of_ports; int owner; int type; int * dev; int * ops; } ;
struct panel_drv_data {struct gpio_desc* hpd_gpio; struct omap_dss_device dssdev; int hpd_lock; int * dev; } ;
struct gpio_desc {int dummy; } ;


 int BIT (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOD_IN ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_FALLING ;
 int IRQF_TRIGGER_RISING ;
 scalar_t__ IS_ERR (struct gpio_desc*) ;
 int OMAP_DISPLAY_TYPE_HDMI ;
 int OMAP_DSS_DEVICE_OP_DETECT ;
 int OMAP_DSS_DEVICE_OP_HPD ;
 int PTR_ERR (struct gpio_desc*) ;
 int THIS_MODULE ;
 int dev_err (int *,char*) ;
 struct gpio_desc* devm_gpiod_get_optional (int *,char*,int ) ;
 struct panel_drv_data* devm_kzalloc (int *,int,int ) ;
 int devm_request_threaded_irq (int *,int ,int *,int ,int,char*,struct panel_drv_data*) ;
 int gpiod_to_irq (struct gpio_desc*) ;
 int hdmic_hpd_isr ;
 int hdmic_ops ;
 int mutex_init (int *) ;
 int omapdss_device_register (struct omap_dss_device*) ;
 int omapdss_display_init (struct omap_dss_device*) ;
 int platform_set_drvdata (struct platform_device*,struct panel_drv_data*) ;

__attribute__((used)) static int hdmic_probe(struct platform_device *pdev)
{
 struct panel_drv_data *ddata;
 struct omap_dss_device *dssdev;
 struct gpio_desc *gpio;
 int r;

 ddata = devm_kzalloc(&pdev->dev, sizeof(*ddata), GFP_KERNEL);
 if (!ddata)
  return -ENOMEM;

 platform_set_drvdata(pdev, ddata);
 ddata->dev = &pdev->dev;

 mutex_init(&ddata->hpd_lock);


 gpio = devm_gpiod_get_optional(&pdev->dev, "hpd", GPIOD_IN);
 if (IS_ERR(gpio)) {
  dev_err(&pdev->dev, "failed to parse HPD gpio\n");
  return PTR_ERR(gpio);
 }

 ddata->hpd_gpio = gpio;

 if (ddata->hpd_gpio) {
  r = devm_request_threaded_irq(&pdev->dev,
    gpiod_to_irq(ddata->hpd_gpio),
    ((void*)0), hdmic_hpd_isr,
    IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING |
    IRQF_ONESHOT,
    "hdmic hpd", ddata);
  if (r)
   return r;
 }

 dssdev = &ddata->dssdev;
 dssdev->ops = &hdmic_ops;
 dssdev->dev = &pdev->dev;
 dssdev->type = OMAP_DISPLAY_TYPE_HDMI;
 dssdev->display = 1;
 dssdev->owner = THIS_MODULE;
 dssdev->of_ports = BIT(0);
 dssdev->ops_flags = ddata->hpd_gpio
     ? OMAP_DSS_DEVICE_OP_DETECT | OMAP_DSS_DEVICE_OP_HPD
     : 0;

 omapdss_display_init(dssdev);
 omapdss_device_register(dssdev);

 return 0;
}
