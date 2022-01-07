
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int set_config; } ;
struct men_z127_gpio {TYPE_1__* mem; int * reg_base; TYPE_4__ gc; } ;
struct mcb_device_id {int dummy; } ;
struct device {int dummy; } ;
struct mcb_device {struct device dev; } ;
struct TYPE_8__ {int start; } ;


 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (TYPE_1__*) ;
 int MEN_Z127_CTRL ;
 int MEN_Z127_GPIODR ;
 int MEN_Z127_PSR ;
 int PTR_ERR (TYPE_1__*) ;
 int bgpio_init (TYPE_4__*,struct device*,int,int *,int *,int *,int *,int *,int ) ;
 int dev_err (struct device*,char*) ;
 int dev_info (struct device*,char*) ;
 int dev_name (struct device*) ;
 struct men_z127_gpio* devm_kzalloc (struct device*,int,int ) ;
 int gpiochip_add_data (TYPE_4__*,struct men_z127_gpio*) ;
 int * ioremap (int ,int ) ;
 int iounmap (int *) ;
 int mcb_release_mem (TYPE_1__*) ;
 TYPE_1__* mcb_request_mem (struct mcb_device*,int ) ;
 int mcb_set_drvdata (struct mcb_device*,struct men_z127_gpio*) ;
 int men_z127_set_config ;
 int resource_size (TYPE_1__*) ;

__attribute__((used)) static int men_z127_probe(struct mcb_device *mdev,
     const struct mcb_device_id *id)
{
 struct men_z127_gpio *men_z127_gpio;
 struct device *dev = &mdev->dev;
 int ret;

 men_z127_gpio = devm_kzalloc(dev, sizeof(struct men_z127_gpio),
         GFP_KERNEL);
 if (!men_z127_gpio)
  return -ENOMEM;

 men_z127_gpio->mem = mcb_request_mem(mdev, dev_name(dev));
 if (IS_ERR(men_z127_gpio->mem)) {
  dev_err(dev, "failed to request device memory");
  return PTR_ERR(men_z127_gpio->mem);
 }

 men_z127_gpio->reg_base = ioremap(men_z127_gpio->mem->start,
       resource_size(men_z127_gpio->mem));
 if (men_z127_gpio->reg_base == ((void*)0)) {
  ret = -ENXIO;
  goto err_release;
 }

 mcb_set_drvdata(mdev, men_z127_gpio);

 ret = bgpio_init(&men_z127_gpio->gc, &mdev->dev, 4,
    men_z127_gpio->reg_base + MEN_Z127_PSR,
    men_z127_gpio->reg_base + MEN_Z127_CTRL,
    ((void*)0),
    men_z127_gpio->reg_base + MEN_Z127_GPIODR,
    ((void*)0), 0);
 if (ret)
  goto err_unmap;

 men_z127_gpio->gc.set_config = men_z127_set_config;

 ret = gpiochip_add_data(&men_z127_gpio->gc, men_z127_gpio);
 if (ret) {
  dev_err(dev, "failed to register MEN 16Z127 GPIO controller");
  goto err_unmap;
 }

 dev_info(dev, "MEN 16Z127 GPIO driver registered");

 return 0;

err_unmap:
 iounmap(men_z127_gpio->reg_base);
err_release:
 mcb_release_mem(men_z127_gpio->mem);
 return ret;
}
