
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct dw_dma_chip_pdata {struct dw_dma_chip* chip; } ;
struct dw_dma_chip {int clk; int dev; } ;


 int clk_disable_unprepare (int ) ;
 int do_dw_dma_disable (struct dw_dma_chip*) ;
 struct dw_dma_chip_pdata* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_sync_suspend (int ) ;

__attribute__((used)) static void dw_shutdown(struct platform_device *pdev)
{
 struct dw_dma_chip_pdata *data = platform_get_drvdata(pdev);
 struct dw_dma_chip *chip = data->chip;
 pm_runtime_get_sync(chip->dev);
 do_dw_dma_disable(chip);
 pm_runtime_put_sync_suspend(chip->dev);

 clk_disable_unprepare(chip->clk);
}
