
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct davinci_i2c_dev {int dev; int adapter; } ;


 int DAVINCI_I2C_MDR_REG ;
 int davinci_i2c_write_reg (struct davinci_i2c_dev*,int ,int ) ;
 int i2c_davinci_cpufreq_deregister (struct davinci_i2c_dev*) ;
 int i2c_del_adapter (int *) ;
 struct davinci_i2c_dev* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int ) ;
 int pm_runtime_dont_use_autosuspend (int ) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put_noidle (int *) ;
 int pm_runtime_put_sync (int ) ;

__attribute__((used)) static int davinci_i2c_remove(struct platform_device *pdev)
{
 struct davinci_i2c_dev *dev = platform_get_drvdata(pdev);
 int ret;

 i2c_davinci_cpufreq_deregister(dev);

 i2c_del_adapter(&dev->adapter);

 ret = pm_runtime_get_sync(&pdev->dev);
 if (ret < 0) {
  pm_runtime_put_noidle(&pdev->dev);
  return ret;
 }

 davinci_i2c_write_reg(dev, DAVINCI_I2C_MDR_REG, 0);

 pm_runtime_dont_use_autosuspend(dev->dev);
 pm_runtime_put_sync(dev->dev);
 pm_runtime_disable(dev->dev);

 return 0;
}
