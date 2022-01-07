
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32f7_i2c_dev {int dev; int clk; int adap; int * dma; } ;
struct platform_device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 int i2c_del_adapter (int *) ;
 struct stm32f7_i2c_dev* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int ) ;
 int pm_runtime_dont_use_autosuspend (int ) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_noidle (int ) ;
 int pm_runtime_set_suspended (int ) ;
 int stm32_i2c_dma_free (int *) ;

__attribute__((used)) static int stm32f7_i2c_remove(struct platform_device *pdev)
{
 struct stm32f7_i2c_dev *i2c_dev = platform_get_drvdata(pdev);

 if (i2c_dev->dma) {
  stm32_i2c_dma_free(i2c_dev->dma);
  i2c_dev->dma = ((void*)0);
 }

 i2c_del_adapter(&i2c_dev->adap);
 pm_runtime_get_sync(i2c_dev->dev);

 clk_disable_unprepare(i2c_dev->clk);

 pm_runtime_put_noidle(i2c_dev->dev);
 pm_runtime_disable(i2c_dev->dev);
 pm_runtime_set_suspended(i2c_dev->dev);
 pm_runtime_dont_use_autosuspend(i2c_dev->dev);

 return 0;
}
