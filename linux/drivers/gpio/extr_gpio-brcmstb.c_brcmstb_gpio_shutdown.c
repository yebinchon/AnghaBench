
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int brcmstb_gpio_quiesce (int *,int) ;

__attribute__((used)) static void brcmstb_gpio_shutdown(struct platform_device *pdev)
{

 brcmstb_gpio_quiesce(&pdev->dev, 0);
}
