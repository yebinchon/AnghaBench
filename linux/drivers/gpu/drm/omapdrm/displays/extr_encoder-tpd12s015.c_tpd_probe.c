
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct omap_dss_device {int of_ports; int ops_flags; struct gpio_desc* next; int owner; int type; TYPE_1__* dev; int * ops; } ;
struct panel_drv_data {struct omap_dss_device dssdev; struct gpio_desc* hpd_gpio; int hpd_lock; struct gpio_desc* ls_oe_gpio; struct gpio_desc* ct_cp_hpd_gpio; } ;
struct gpio_desc {int dummy; } ;


 int BIT (int) ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int GPIOD_IN ;
 int GPIOD_OUT_LOW ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_FALLING ;
 int IRQF_TRIGGER_RISING ;
 scalar_t__ IS_ERR (struct gpio_desc*) ;
 int OMAP_DISPLAY_TYPE_HDMI ;
 int OMAP_DSS_DEVICE_OP_DETECT ;
 int OMAP_DSS_DEVICE_OP_HPD ;
 int PTR_ERR (struct gpio_desc*) ;
 int THIS_MODULE ;
 int dev_err (TYPE_1__*,char*) ;
 struct gpio_desc* devm_gpiod_get_index (TYPE_1__*,int *,int,int ) ;
 struct gpio_desc* devm_gpiod_get_index_optional (TYPE_1__*,int *,int,int ) ;
 struct panel_drv_data* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_request_threaded_irq (TYPE_1__*,int ,int *,int ,int,char*,struct panel_drv_data*) ;
 int gpiod_to_irq (struct gpio_desc*) ;
 int mutex_init (int *) ;
 int omapdss_device_register (struct omap_dss_device*) ;
 struct gpio_desc* omapdss_of_find_connected_device (int ,int) ;
 int platform_set_drvdata (struct platform_device*,struct panel_drv_data*) ;
 int tpd_hpd_isr ;
 int tpd_ops ;

__attribute__((used)) static int tpd_probe(struct platform_device *pdev)
{
 struct omap_dss_device *dssdev;
 struct panel_drv_data *ddata;
 int r;
 struct gpio_desc *gpio;

 ddata = devm_kzalloc(&pdev->dev, sizeof(*ddata), GFP_KERNEL);
 if (!ddata)
  return -ENOMEM;

 platform_set_drvdata(pdev, ddata);

 gpio = devm_gpiod_get_index_optional(&pdev->dev, ((void*)0), 0,
   GPIOD_OUT_LOW);
 if (IS_ERR(gpio))
  return PTR_ERR(gpio);

 ddata->ct_cp_hpd_gpio = gpio;

 gpio = devm_gpiod_get_index_optional(&pdev->dev, ((void*)0), 1,
   GPIOD_OUT_LOW);
 if (IS_ERR(gpio))
  return PTR_ERR(gpio);

 ddata->ls_oe_gpio = gpio;

 gpio = devm_gpiod_get_index(&pdev->dev, ((void*)0), 2,
  GPIOD_IN);
 if (IS_ERR(gpio))
  return PTR_ERR(gpio);

 ddata->hpd_gpio = gpio;

 mutex_init(&ddata->hpd_lock);

 r = devm_request_threaded_irq(&pdev->dev, gpiod_to_irq(ddata->hpd_gpio),
  ((void*)0), tpd_hpd_isr,
  IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
  "tpd12s015 hpd", ddata);
 if (r)
  return r;

 dssdev = &ddata->dssdev;
 dssdev->ops = &tpd_ops;
 dssdev->dev = &pdev->dev;
 dssdev->type = OMAP_DISPLAY_TYPE_HDMI;
 dssdev->owner = THIS_MODULE;
 dssdev->of_ports = BIT(1) | BIT(0);
 dssdev->ops_flags = OMAP_DSS_DEVICE_OP_DETECT
     | OMAP_DSS_DEVICE_OP_HPD;

 dssdev->next = omapdss_of_find_connected_device(pdev->dev.of_node, 1);
 if (IS_ERR(dssdev->next)) {
  if (PTR_ERR(dssdev->next) != -EPROBE_DEFER)
   dev_err(&pdev->dev, "failed to find video sink\n");
  return PTR_ERR(dssdev->next);
 }

 omapdss_device_register(dssdev);

 return 0;
}
