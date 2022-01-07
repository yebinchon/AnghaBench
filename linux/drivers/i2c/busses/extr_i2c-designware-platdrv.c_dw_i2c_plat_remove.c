
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct dw_i2c_dev {int rst; int (* disable ) (struct dw_i2c_dev*) ;int adapter; } ;


 int dw_i2c_plat_pm_cleanup (struct dw_i2c_dev*) ;
 int i2c_del_adapter (int *) ;
 struct dw_i2c_dev* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_dont_use_autosuspend (int *) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put_sync (int *) ;
 int reset_control_assert (int ) ;
 int stub1 (struct dw_i2c_dev*) ;

__attribute__((used)) static int dw_i2c_plat_remove(struct platform_device *pdev)
{
 struct dw_i2c_dev *dev = platform_get_drvdata(pdev);

 pm_runtime_get_sync(&pdev->dev);

 i2c_del_adapter(&dev->adapter);

 dev->disable(dev);

 pm_runtime_dont_use_autosuspend(&pdev->dev);
 pm_runtime_put_sync(&pdev->dev);
 dw_i2c_plat_pm_cleanup(dev);

 reset_control_assert(dev->rst);

 return 0;
}
