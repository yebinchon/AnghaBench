
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int base; int label; int set; int get; int direction_output; int direction_input; int get_direction; int * parent; int ngpio; } ;
struct xgene_gpio {TYPE_1__ chip; int lock; int base; } ;
struct resource {int start; } ;
struct platform_device {int dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 int XGENE_MAX_GPIOS ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*) ;
 int dev_name (int *) ;
 int devm_gpiochip_add_data (int *,TYPE_1__*,struct xgene_gpio*) ;
 int devm_ioremap_nocache (int *,int ,int ) ;
 struct xgene_gpio* devm_kzalloc (int *,int,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct xgene_gpio*) ;
 int resource_size (struct resource*) ;
 int spin_lock_init (int *) ;
 int xgene_gpio_dir_in ;
 int xgene_gpio_dir_out ;
 int xgene_gpio_get ;
 int xgene_gpio_get_direction ;
 int xgene_gpio_set ;

__attribute__((used)) static int xgene_gpio_probe(struct platform_device *pdev)
{
 struct resource *res;
 struct xgene_gpio *gpio;
 int err = 0;

 gpio = devm_kzalloc(&pdev->dev, sizeof(*gpio), GFP_KERNEL);
 if (!gpio) {
  err = -ENOMEM;
  goto err;
 }

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!res) {
  err = -EINVAL;
  goto err;
 }

 gpio->base = devm_ioremap_nocache(&pdev->dev, res->start,
       resource_size(res));
 if (!gpio->base) {
  err = -ENOMEM;
  goto err;
 }

 gpio->chip.ngpio = XGENE_MAX_GPIOS;

 spin_lock_init(&gpio->lock);
 gpio->chip.parent = &pdev->dev;
 gpio->chip.get_direction = xgene_gpio_get_direction;
 gpio->chip.direction_input = xgene_gpio_dir_in;
 gpio->chip.direction_output = xgene_gpio_dir_out;
 gpio->chip.get = xgene_gpio_get;
 gpio->chip.set = xgene_gpio_set;
 gpio->chip.label = dev_name(&pdev->dev);
 gpio->chip.base = -1;

 platform_set_drvdata(pdev, gpio);

 err = devm_gpiochip_add_data(&pdev->dev, &gpio->chip, gpio);
 if (err) {
  dev_err(&pdev->dev,
   "failed to register gpiochip.\n");
  goto err;
 }

 dev_info(&pdev->dev, "X-Gene GPIO driver registered.\n");
 return 0;
err:
 dev_err(&pdev->dev, "X-Gene GPIO driver registration failed.\n");
 return err;
}
