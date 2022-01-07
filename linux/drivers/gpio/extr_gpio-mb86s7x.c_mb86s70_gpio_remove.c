
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct mb86s70_gpio_chip {int clk; int gc; } ;


 int acpi_gpiochip_free_interrupts (int *) ;
 int clk_disable_unprepare (int ) ;
 int gpiochip_remove (int *) ;
 scalar_t__ has_acpi_companion (int *) ;
 struct mb86s70_gpio_chip* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int mb86s70_gpio_remove(struct platform_device *pdev)
{
 struct mb86s70_gpio_chip *gchip = platform_get_drvdata(pdev);

 if (has_acpi_companion(&pdev->dev))
  acpi_gpiochip_free_interrupts(&gchip->gc);
 gpiochip_remove(&gchip->gc);
 clk_disable_unprepare(gchip->clk);

 return 0;
}
