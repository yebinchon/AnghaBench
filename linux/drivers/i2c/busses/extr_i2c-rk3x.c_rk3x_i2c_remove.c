
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk3x_i2c {int clk; int pclk; int clk_rate_nb; int adap; } ;
struct platform_device {int dummy; } ;


 int clk_notifier_unregister (int ,int *) ;
 int clk_unprepare (int ) ;
 int i2c_del_adapter (int *) ;
 struct rk3x_i2c* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int rk3x_i2c_remove(struct platform_device *pdev)
{
 struct rk3x_i2c *i2c = platform_get_drvdata(pdev);

 i2c_del_adapter(&i2c->adap);

 clk_notifier_unregister(i2c->clk, &i2c->clk_rate_nb);
 clk_unprepare(i2c->pclk);
 clk_unprepare(i2c->clk);

 return 0;
}
