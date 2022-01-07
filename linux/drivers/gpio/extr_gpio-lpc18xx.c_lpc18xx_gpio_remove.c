
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct lpc18xx_gpio_chip {int clk; TYPE_1__* pin_ic; } ;
struct TYPE_2__ {int domain; } ;


 int clk_disable_unprepare (int ) ;
 int irq_domain_remove (int ) ;
 struct lpc18xx_gpio_chip* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int lpc18xx_gpio_remove(struct platform_device *pdev)
{
 struct lpc18xx_gpio_chip *gc = platform_get_drvdata(pdev);

 if (gc->pin_ic)
  irq_domain_remove(gc->pin_ic->domain);

 clk_disable_unprepare(gc->clk);

 return 0;
}
