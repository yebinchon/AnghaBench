
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_dac_priv {int vref; int pclk; } ;
struct stm32_dac_common {int dummy; } ;
struct platform_device {int dev; } ;


 int clk_disable_unprepare (int ) ;
 int of_platform_depopulate (int *) ;
 struct stm32_dac_common* platform_get_drvdata (struct platform_device*) ;
 int regulator_disable (int ) ;
 struct stm32_dac_priv* to_stm32_dac_priv (struct stm32_dac_common*) ;

__attribute__((used)) static int stm32_dac_remove(struct platform_device *pdev)
{
 struct stm32_dac_common *common = platform_get_drvdata(pdev);
 struct stm32_dac_priv *priv = to_stm32_dac_priv(common);

 of_platform_depopulate(&pdev->dev);
 clk_disable_unprepare(priv->pclk);
 regulator_disable(priv->vref);

 return 0;
}
