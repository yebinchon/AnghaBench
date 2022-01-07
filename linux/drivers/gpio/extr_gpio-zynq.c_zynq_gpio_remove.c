
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zynq_gpio {int clk; int chip; } ;
struct platform_device {int dev; } ;


 int clk_disable_unprepare (int ) ;
 int device_set_wakeup_capable (int *,int ) ;
 int gpiochip_remove (int *) ;
 struct zynq_gpio* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_get_sync (int *) ;

__attribute__((used)) static int zynq_gpio_remove(struct platform_device *pdev)
{
 struct zynq_gpio *gpio = platform_get_drvdata(pdev);

 pm_runtime_get_sync(&pdev->dev);
 gpiochip_remove(&gpio->chip);
 clk_disable_unprepare(gpio->clk);
 device_set_wakeup_capable(&pdev->dev, 0);
 pm_runtime_disable(&pdev->dev);
 return 0;
}
