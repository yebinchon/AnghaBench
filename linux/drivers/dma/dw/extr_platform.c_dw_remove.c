
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct dw_dma_chip_pdata {int (* remove ) (struct dw_dma_chip*) ;struct dw_dma_chip* chip; } ;
struct dw_dma_chip {int clk; int dev; int dw; } ;


 int clk_disable_unprepare (int ) ;
 int dev_warn (int ,char*,int) ;
 int dw_dma_acpi_controller_free (int ) ;
 int dw_dma_of_controller_free (int ) ;
 struct dw_dma_chip_pdata* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int stub1 (struct dw_dma_chip*) ;

__attribute__((used)) static int dw_remove(struct platform_device *pdev)
{
 struct dw_dma_chip_pdata *data = platform_get_drvdata(pdev);
 struct dw_dma_chip *chip = data->chip;
 int ret;

 dw_dma_acpi_controller_free(chip->dw);

 dw_dma_of_controller_free(chip->dw);

 ret = data->remove(chip);
 if (ret)
  dev_warn(chip->dev, "can't remove device properly: %d\n", ret);

 pm_runtime_disable(&pdev->dev);
 clk_disable_unprepare(chip->clk);

 return 0;
}
