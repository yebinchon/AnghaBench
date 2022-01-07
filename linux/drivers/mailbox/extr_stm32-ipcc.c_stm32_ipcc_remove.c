
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_ipcc {scalar_t__ wkp; } ;
struct platform_device {int dev; } ;


 int dev_pm_clear_wake_irq (int *) ;
 int device_init_wakeup (int *,int) ;
 struct stm32_ipcc* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int stm32_ipcc_remove(struct platform_device *pdev)
{
 struct stm32_ipcc *ipcc = platform_get_drvdata(pdev);

 if (ipcc->wkp)
  dev_pm_clear_wake_irq(&pdev->dev);

 device_init_wakeup(&pdev->dev, 0);

 return 0;
}
