
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct gpio_bank {int dbck; scalar_t__ dbck_flag; int chip; int nb; } ;


 int clk_unprepare (int ) ;
 int cpu_pm_unregister_notifier (int *) ;
 int gpiochip_remove (int *) ;
 struct gpio_bank* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;

__attribute__((used)) static int omap_gpio_remove(struct platform_device *pdev)
{
 struct gpio_bank *bank = platform_get_drvdata(pdev);

 cpu_pm_unregister_notifier(&bank->nb);
 gpiochip_remove(&bank->chip);
 pm_runtime_disable(&pdev->dev);
 if (bank->dbck_flag)
  clk_unprepare(bank->dbck);

 return 0;
}
