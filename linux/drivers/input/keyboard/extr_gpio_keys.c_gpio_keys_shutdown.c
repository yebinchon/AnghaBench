
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int dev_err (int *,char*) ;
 int gpio_keys_suspend (int *) ;

__attribute__((used)) static void gpio_keys_shutdown(struct platform_device *pdev)
{
 int ret;

 ret = gpio_keys_suspend(&pdev->dev);
 if (ret)
  dev_err(&pdev->dev, "failed to shutdown\n");
}
