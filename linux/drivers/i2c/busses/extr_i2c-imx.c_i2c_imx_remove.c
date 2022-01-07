
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct TYPE_2__ {int dev; } ;
struct imx_i2c_struct {int clk; int clk_change_nb; scalar_t__ dma; TYPE_1__ adapter; } ;


 int IMX_I2C_I2CR ;
 int IMX_I2C_I2SR ;
 int IMX_I2C_IADR ;
 int IMX_I2C_IFDR ;
 int clk_disable_unprepare (int ) ;
 int clk_notifier_unregister (int ,int *) ;
 int dev_dbg (int *,char*) ;
 int i2c_del_adapter (TYPE_1__*) ;
 int i2c_imx_dma_free (struct imx_i2c_struct*) ;
 int imx_i2c_write_reg (int ,struct imx_i2c_struct*,int ) ;
 struct imx_i2c_struct* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_put_noidle (int *) ;

__attribute__((used)) static int i2c_imx_remove(struct platform_device *pdev)
{
 struct imx_i2c_struct *i2c_imx = platform_get_drvdata(pdev);
 int ret;

 ret = pm_runtime_get_sync(&pdev->dev);
 if (ret < 0)
  return ret;


 dev_dbg(&i2c_imx->adapter.dev, "adapter removed\n");
 i2c_del_adapter(&i2c_imx->adapter);

 if (i2c_imx->dma)
  i2c_imx_dma_free(i2c_imx);


 imx_i2c_write_reg(0, i2c_imx, IMX_I2C_IADR);
 imx_i2c_write_reg(0, i2c_imx, IMX_I2C_IFDR);
 imx_i2c_write_reg(0, i2c_imx, IMX_I2C_I2CR);
 imx_i2c_write_reg(0, i2c_imx, IMX_I2C_I2SR);

 clk_notifier_unregister(i2c_imx->clk, &i2c_imx->clk_change_nb);
 clk_disable_unprepare(i2c_imx->clk);

 pm_runtime_put_noidle(&pdev->dev);
 pm_runtime_disable(&pdev->dev);

 return 0;
}
