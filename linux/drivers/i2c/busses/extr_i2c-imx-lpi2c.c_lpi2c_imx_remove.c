
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct lpi2c_imx_struct {int adapter; } ;


 int i2c_del_adapter (int *) ;
 struct lpi2c_imx_struct* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_dont_use_autosuspend (int *) ;

__attribute__((used)) static int lpi2c_imx_remove(struct platform_device *pdev)
{
 struct lpi2c_imx_struct *lpi2c_imx = platform_get_drvdata(pdev);

 i2c_del_adapter(&lpi2c_imx->adapter);

 pm_runtime_disable(&pdev->dev);
 pm_runtime_dont_use_autosuspend(&pdev->dev);

 return 0;
}
