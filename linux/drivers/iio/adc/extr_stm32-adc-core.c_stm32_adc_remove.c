
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_adc_priv {int dummy; } ;
struct stm32_adc_common {int dummy; } ;
struct platform_device {int dev; } ;


 int of_platform_depopulate (int *) ;
 struct stm32_adc_common* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put_noidle (int *) ;
 int pm_runtime_set_suspended (int *) ;
 int stm32_adc_core_hw_stop (int *) ;
 int stm32_adc_irq_remove (struct platform_device*,struct stm32_adc_priv*) ;
 struct stm32_adc_priv* to_stm32_adc_priv (struct stm32_adc_common*) ;

__attribute__((used)) static int stm32_adc_remove(struct platform_device *pdev)
{
 struct stm32_adc_common *common = platform_get_drvdata(pdev);
 struct stm32_adc_priv *priv = to_stm32_adc_priv(common);

 pm_runtime_get_sync(&pdev->dev);
 of_platform_depopulate(&pdev->dev);
 stm32_adc_irq_remove(pdev, priv);
 stm32_adc_core_hw_stop(&pdev->dev);
 pm_runtime_disable(&pdev->dev);
 pm_runtime_set_suspended(&pdev->dev);
 pm_runtime_put_noidle(&pdev->dev);

 return 0;
}
