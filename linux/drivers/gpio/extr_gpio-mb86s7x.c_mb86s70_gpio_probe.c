
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct TYPE_3__ {int ngpio; int base; int to_irq; int * parent; int owner; int label; int set; int get; int free; int request; int direction_input; int direction_output; } ;
struct mb86s70_gpio_chip {TYPE_1__ gc; int clk; int lock; int base; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int THIS_MODULE ;
 int acpi_gpiochip_request_interrupts (TYPE_1__*) ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int *,char*) ;
 int dev_name (int *) ;
 int devm_clk_get (int *,int *) ;
 struct mb86s70_gpio_chip* devm_kzalloc (int *,int,int ) ;
 int devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int gpiochip_add_data (TYPE_1__*,struct mb86s70_gpio_chip*) ;
 scalar_t__ has_acpi_companion (int *) ;
 int mb86s70_gpio_direction_input ;
 int mb86s70_gpio_direction_output ;
 int mb86s70_gpio_free ;
 int mb86s70_gpio_get ;
 int mb86s70_gpio_request ;
 int mb86s70_gpio_set ;
 int mb86s70_gpio_to_irq ;
 int platform_set_drvdata (struct platform_device*,struct mb86s70_gpio_chip*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int mb86s70_gpio_probe(struct platform_device *pdev)
{
 struct mb86s70_gpio_chip *gchip;
 int ret;

 gchip = devm_kzalloc(&pdev->dev, sizeof(*gchip), GFP_KERNEL);
 if (gchip == ((void*)0))
  return -ENOMEM;

 platform_set_drvdata(pdev, gchip);

 gchip->base = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(gchip->base))
  return PTR_ERR(gchip->base);

 if (!has_acpi_companion(&pdev->dev)) {
  gchip->clk = devm_clk_get(&pdev->dev, ((void*)0));
  if (IS_ERR(gchip->clk))
   return PTR_ERR(gchip->clk);

  ret = clk_prepare_enable(gchip->clk);
  if (ret)
   return ret;
 }

 spin_lock_init(&gchip->lock);

 gchip->gc.direction_output = mb86s70_gpio_direction_output;
 gchip->gc.direction_input = mb86s70_gpio_direction_input;
 gchip->gc.request = mb86s70_gpio_request;
 gchip->gc.free = mb86s70_gpio_free;
 gchip->gc.get = mb86s70_gpio_get;
 gchip->gc.set = mb86s70_gpio_set;
 gchip->gc.label = dev_name(&pdev->dev);
 gchip->gc.ngpio = 32;
 gchip->gc.owner = THIS_MODULE;
 gchip->gc.parent = &pdev->dev;
 gchip->gc.base = -1;

 if (has_acpi_companion(&pdev->dev))
  gchip->gc.to_irq = mb86s70_gpio_to_irq;

 ret = gpiochip_add_data(&gchip->gc, gchip);
 if (ret) {
  dev_err(&pdev->dev, "couldn't register gpio driver\n");
  clk_disable_unprepare(gchip->clk);
  return ret;
 }

 if (has_acpi_companion(&pdev->dev))
  acpi_gpiochip_request_interrupts(&gchip->gc);

 return 0;
}
