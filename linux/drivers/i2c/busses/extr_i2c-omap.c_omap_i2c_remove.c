
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct omap_i2c_dev {int adapter; } ;


 int OMAP_I2C_CON_REG ;
 int i2c_del_adapter (int *) ;
 int omap_i2c_write_reg (struct omap_i2c_dev*,int ,int ) ;
 struct omap_i2c_dev* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_dont_use_autosuspend (int *) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put_sync (int *) ;

__attribute__((used)) static int omap_i2c_remove(struct platform_device *pdev)
{
 struct omap_i2c_dev *omap = platform_get_drvdata(pdev);
 int ret;

 i2c_del_adapter(&omap->adapter);
 ret = pm_runtime_get_sync(&pdev->dev);
 if (ret < 0)
  return ret;

 omap_i2c_write_reg(omap, OMAP_I2C_CON_REG, 0);
 pm_runtime_dont_use_autosuspend(&pdev->dev);
 pm_runtime_put_sync(&pdev->dev);
 pm_runtime_disable(&pdev->dev);
 return 0;
}
