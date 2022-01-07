
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int base; int ngpio; int owner; int set; int get; int label; int * parent; } ;
struct ttl_module {struct gpio_chip gpio; int regs; int lock; } ;
struct platform_device {int dev; int name; } ;
struct janz_platform_data {int dummy; } ;


 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int THIS_MODULE ;
 int dev_err (int *,char*) ;
 struct janz_platform_data* dev_get_platdata (int *) ;
 int devm_gpiochip_add_data (int *,struct gpio_chip*,int *) ;
 struct ttl_module* devm_kzalloc (int *,int,int ) ;
 int devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct ttl_module*) ;
 int spin_lock_init (int *) ;
 int ttl_get_value ;
 int ttl_set_value ;
 int ttl_setup_device (struct ttl_module*) ;

__attribute__((used)) static int ttl_probe(struct platform_device *pdev)
{
 struct janz_platform_data *pdata;
 struct ttl_module *mod;
 struct gpio_chip *gpio;
 int ret;

 pdata = dev_get_platdata(&pdev->dev);
 if (!pdata) {
  dev_err(&pdev->dev, "no platform data\n");
  return -ENXIO;
 }

 mod = devm_kzalloc(&pdev->dev, sizeof(*mod), GFP_KERNEL);
 if (!mod)
  return -ENOMEM;

 platform_set_drvdata(pdev, mod);
 spin_lock_init(&mod->lock);


 mod->regs = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(mod->regs))
  return PTR_ERR(mod->regs);

 ttl_setup_device(mod);


 gpio = &mod->gpio;
 gpio->parent = &pdev->dev;
 gpio->label = pdev->name;
 gpio->get = ttl_get_value;
 gpio->set = ttl_set_value;
 gpio->owner = THIS_MODULE;


 gpio->base = -1;
 gpio->ngpio = 20;

 ret = devm_gpiochip_add_data(&pdev->dev, gpio, ((void*)0));
 if (ret) {
  dev_err(&pdev->dev, "unable to add GPIO chip\n");
  return ret;
 }

 return 0;
}
