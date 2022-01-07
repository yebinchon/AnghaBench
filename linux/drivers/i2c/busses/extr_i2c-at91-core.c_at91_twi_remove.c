
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct at91_twi_dev {int dev; int clk; int adapter; } ;


 int clk_disable_unprepare (int ) ;
 int i2c_del_adapter (int *) ;
 struct at91_twi_dev* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int ) ;
 int pm_runtime_set_suspended (int ) ;

__attribute__((used)) static int at91_twi_remove(struct platform_device *pdev)
{
 struct at91_twi_dev *dev = platform_get_drvdata(pdev);

 i2c_del_adapter(&dev->adapter);
 clk_disable_unprepare(dev->clk);

 pm_runtime_disable(dev->dev);
 pm_runtime_set_suspended(dev->dev);

 return 0;
}
