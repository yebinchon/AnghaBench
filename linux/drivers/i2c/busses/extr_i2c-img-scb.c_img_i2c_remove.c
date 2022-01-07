
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct img_i2c {int adap; } ;


 int i2c_del_adapter (int *) ;
 int img_i2c_runtime_suspend (int *) ;
 struct img_i2c* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_status_suspended (int *) ;

__attribute__((used)) static int img_i2c_remove(struct platform_device *dev)
{
 struct img_i2c *i2c = platform_get_drvdata(dev);

 i2c_del_adapter(&i2c->adap);
 pm_runtime_disable(&dev->dev);
 if (!pm_runtime_status_suspended(&dev->dev))
  img_i2c_runtime_suspend(&dev->dev);

 return 0;
}
