
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct dwapb_gpio {int clk; int rst; } ;


 int clk_disable_unprepare (int ) ;
 int dwapb_gpio_unregister (struct dwapb_gpio*) ;
 int dwapb_irq_teardown (struct dwapb_gpio*) ;
 struct dwapb_gpio* platform_get_drvdata (struct platform_device*) ;
 int reset_control_assert (int ) ;

__attribute__((used)) static int dwapb_gpio_remove(struct platform_device *pdev)
{
 struct dwapb_gpio *gpio = platform_get_drvdata(pdev);

 dwapb_gpio_unregister(gpio);
 dwapb_irq_teardown(gpio);
 reset_control_assert(gpio->rst);
 clk_disable_unprepare(gpio->clk);

 return 0;
}
