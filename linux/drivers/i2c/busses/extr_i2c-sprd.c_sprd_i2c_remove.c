
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sprd_i2c {int dev; int clk; int adap; } ;
struct platform_device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 int i2c_del_adapter (int *) ;
 struct sprd_i2c* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int ) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_noidle (int ) ;

__attribute__((used)) static int sprd_i2c_remove(struct platform_device *pdev)
{
 struct sprd_i2c *i2c_dev = platform_get_drvdata(pdev);
 int ret;

 ret = pm_runtime_get_sync(i2c_dev->dev);
 if (ret < 0)
  return ret;

 i2c_del_adapter(&i2c_dev->adap);
 clk_disable_unprepare(i2c_dev->clk);

 pm_runtime_put_noidle(i2c_dev->dev);
 pm_runtime_disable(i2c_dev->dev);

 return 0;
}
