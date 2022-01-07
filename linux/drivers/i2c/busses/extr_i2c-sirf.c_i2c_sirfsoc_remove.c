
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sirfsoc_i2c {int clk; scalar_t__ base; } ;
struct platform_device {int dummy; } ;
struct i2c_adapter {struct sirfsoc_i2c* algo_data; } ;


 scalar_t__ SIRFSOC_I2C_CTRL ;
 int SIRFSOC_I2C_RESET ;
 int clk_put (int ) ;
 int clk_unprepare (int ) ;
 int i2c_del_adapter (struct i2c_adapter*) ;
 struct i2c_adapter* platform_get_drvdata (struct platform_device*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int i2c_sirfsoc_remove(struct platform_device *pdev)
{
 struct i2c_adapter *adapter = platform_get_drvdata(pdev);
 struct sirfsoc_i2c *siic = adapter->algo_data;

 writel(SIRFSOC_I2C_RESET, siic->base + SIRFSOC_I2C_CTRL);
 i2c_del_adapter(adapter);
 clk_unprepare(siic->clk);
 clk_put(siic->clk);
 return 0;
}
