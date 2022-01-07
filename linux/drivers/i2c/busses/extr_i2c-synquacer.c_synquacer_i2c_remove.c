
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct synquacer_i2c {int pclk; int adapter; } ;
struct platform_device {int dummy; } ;


 int IS_ERR (int ) ;
 int clk_disable_unprepare (int ) ;
 int i2c_del_adapter (int *) ;
 struct synquacer_i2c* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int synquacer_i2c_remove(struct platform_device *pdev)
{
 struct synquacer_i2c *i2c = platform_get_drvdata(pdev);

 i2c_del_adapter(&i2c->adapter);
 if (!IS_ERR(i2c->pclk))
  clk_disable_unprepare(i2c->pclk);

 return 0;
}
