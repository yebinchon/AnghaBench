
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct ftgpio_gpio {int clk; } ;


 int IS_ERR (int ) ;
 int clk_disable_unprepare (int ) ;
 struct ftgpio_gpio* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int ftgpio_gpio_remove(struct platform_device *pdev)
{
 struct ftgpio_gpio *g = platform_get_drvdata(pdev);

 if (!IS_ERR(g->clk))
  clk_disable_unprepare(g->clk);
 return 0;
}
