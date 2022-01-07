
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_dfsdm {int dummy; } ;
struct platform_device {int dev; } ;


 int of_platform_depopulate (int *) ;
 struct stm32_dfsdm* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put_noidle (int *) ;
 int pm_runtime_set_suspended (int *) ;
 int stm32_dfsdm_clk_disable_unprepare (struct stm32_dfsdm*) ;

__attribute__((used)) static int stm32_dfsdm_core_remove(struct platform_device *pdev)
{
 struct stm32_dfsdm *dfsdm = platform_get_drvdata(pdev);

 pm_runtime_get_sync(&pdev->dev);
 of_platform_depopulate(&pdev->dev);
 pm_runtime_disable(&pdev->dev);
 pm_runtime_set_suspended(&pdev->dev);
 pm_runtime_put_noidle(&pdev->dev);
 stm32_dfsdm_clk_disable_unprepare(dfsdm);

 return 0;
}
