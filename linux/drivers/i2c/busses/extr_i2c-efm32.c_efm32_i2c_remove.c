
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct efm32_i2c_ddata {int clk; int irq; int adapter; } ;


 int clk_disable_unprepare (int ) ;
 int free_irq (int ,struct efm32_i2c_ddata*) ;
 int i2c_del_adapter (int *) ;
 struct efm32_i2c_ddata* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int efm32_i2c_remove(struct platform_device *pdev)
{
 struct efm32_i2c_ddata *ddata = platform_get_drvdata(pdev);

 i2c_del_adapter(&ddata->adapter);
 free_irq(ddata->irq, ddata);
 clk_disable_unprepare(ddata->clk);

 return 0;
}
