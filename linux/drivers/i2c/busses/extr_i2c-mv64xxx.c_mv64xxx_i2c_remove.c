
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct mv64xxx_i2c_data {int clk; int reg_clk; int rstc; int irq; int adapter; } ;


 int clk_disable_unprepare (int ) ;
 int free_irq (int ,struct mv64xxx_i2c_data*) ;
 int i2c_del_adapter (int *) ;
 struct mv64xxx_i2c_data* platform_get_drvdata (struct platform_device*) ;
 int reset_control_assert (int ) ;

__attribute__((used)) static int
mv64xxx_i2c_remove(struct platform_device *dev)
{
 struct mv64xxx_i2c_data *drv_data = platform_get_drvdata(dev);

 i2c_del_adapter(&drv_data->adapter);
 free_irq(drv_data->irq, drv_data);
 reset_control_assert(drv_data->rstc);
 clk_disable_unprepare(drv_data->reg_clk);
 clk_disable_unprepare(drv_data->clk);

 return 0;
}
