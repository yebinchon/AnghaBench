
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; } ;
struct platform_device {int dummy; } ;
struct ep93xx_keypad {int mmio_base; int input_dev; int clk; scalar_t__ enabled; int irq; } ;


 int IORESOURCE_MEM ;
 int clk_disable (int ) ;
 int clk_put (int ) ;
 int ep93xx_keypad_release_gpio (struct platform_device*) ;
 int free_irq (int ,struct ep93xx_keypad*) ;
 int input_unregister_device (int ) ;
 int iounmap (int ) ;
 int kfree (struct ep93xx_keypad*) ;
 struct ep93xx_keypad* platform_get_drvdata (struct platform_device*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int release_mem_region (int ,int ) ;
 int resource_size (struct resource*) ;

__attribute__((used)) static int ep93xx_keypad_remove(struct platform_device *pdev)
{
 struct ep93xx_keypad *keypad = platform_get_drvdata(pdev);
 struct resource *res;

 free_irq(keypad->irq, keypad);

 if (keypad->enabled)
  clk_disable(keypad->clk);
 clk_put(keypad->clk);

 input_unregister_device(keypad->input_dev);

 ep93xx_keypad_release_gpio(pdev);

 iounmap(keypad->mmio_base);

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 release_mem_region(res->start, resource_size(res));

 kfree(keypad);

 return 0;
}
