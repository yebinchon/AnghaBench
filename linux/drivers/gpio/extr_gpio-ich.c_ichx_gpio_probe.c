
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct resource {int start; } ;
struct device {int dummy; } ;
struct platform_device {int name; struct device dev; } ;
struct lpc_ich_info {int gpio_version; int use_gpio; } ;
struct TYPE_14__ {scalar_t__ ngpio; scalar_t__ base; } ;
struct TYPE_13__ {TYPE_3__ chip; struct resource* pm_base; TYPE_1__* desc; int use_gpio; struct resource* gpio_base; int lock; struct device* dev; } ;
struct TYPE_12__ {int uses_gpe0; } ;



 int ENODEV ;

 int ICH_RES_GPE0 ;
 int ICH_RES_GPIO ;






 int IORESOURCE_IO ;
 TYPE_1__ avoton_desc ;
 int dev_err (struct device*,char*) ;
 struct lpc_ich_info* dev_get_platdata (struct device*) ;
 int dev_info (struct device*,char*,scalar_t__,scalar_t__) ;
 int dev_warn (struct device*,char*) ;
 int devm_request_region (struct device*,int ,int ,int ) ;
 int gpiochip_add_data (TYPE_3__*,int *) ;
 TYPE_1__ i3100_desc ;
 TYPE_1__ ich10_cons_desc ;
 TYPE_1__ ich10_corp_desc ;
 TYPE_1__ ich6_desc ;
 TYPE_1__ ich7_desc ;
 TYPE_1__ ich9_desc ;
 int ichx_gpio_request_regions (struct device*,struct resource*,int ,int ) ;
 int ichx_gpiolib_setup (TYPE_3__*) ;
 TYPE_2__ ichx_priv ;
 TYPE_1__ intel5_desc ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int resource_size (struct resource*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int ichx_gpio_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct lpc_ich_info *ich_info = dev_get_platdata(dev);
 struct resource *res_base, *res_pm;
 int err;

 if (!ich_info)
  return -ENODEV;

 switch (ich_info->gpio_version) {
 case 134:
  ichx_priv.desc = &i3100_desc;
  break;
 case 131:
  ichx_priv.desc = &intel5_desc;
  break;
 case 130:
  ichx_priv.desc = &ich6_desc;
  break;
 case 129:
  ichx_priv.desc = &ich7_desc;
  break;
 case 128:
  ichx_priv.desc = &ich9_desc;
  break;
 case 132:
  ichx_priv.desc = &ich10_corp_desc;
  break;
 case 133:
  ichx_priv.desc = &ich10_cons_desc;
  break;
 case 135:
  ichx_priv.desc = &avoton_desc;
  break;
 default:
  return -ENODEV;
 }

 ichx_priv.dev = dev;
 spin_lock_init(&ichx_priv.lock);

 res_base = platform_get_resource(pdev, IORESOURCE_IO, ICH_RES_GPIO);
 err = ichx_gpio_request_regions(dev, res_base, pdev->name,
     ich_info->use_gpio);
 if (err)
  return err;

 ichx_priv.gpio_base = res_base;
 ichx_priv.use_gpio = ich_info->use_gpio;






 if (!ichx_priv.desc->uses_gpe0)
  goto init;

 res_pm = platform_get_resource(pdev, IORESOURCE_IO, ICH_RES_GPE0);
 if (!res_pm) {
  dev_warn(dev, "ACPI BAR is unavailable, GPI 0 - 15 unavailable\n");
  goto init;
 }

 if (!devm_request_region(dev, res_pm->start, resource_size(res_pm),
     pdev->name)) {
  dev_warn(dev, "ACPI BAR is busy, GPI 0 - 15 unavailable\n");
  goto init;
 }

 ichx_priv.pm_base = res_pm;

init:
 ichx_gpiolib_setup(&ichx_priv.chip);
 err = gpiochip_add_data(&ichx_priv.chip, ((void*)0));
 if (err) {
  dev_err(dev, "Failed to register GPIOs\n");
  return err;
 }

 dev_info(dev, "GPIO from %d to %d\n", ichx_priv.chip.base,
   ichx_priv.chip.base + ichx_priv.chip.ngpio - 1);

 return 0;
}
