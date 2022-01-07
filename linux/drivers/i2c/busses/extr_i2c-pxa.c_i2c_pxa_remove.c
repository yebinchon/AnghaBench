
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa_i2c {int clk; int adap; } ;
struct platform_device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 int i2c_del_adapter (int *) ;
 struct pxa_i2c* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int i2c_pxa_remove(struct platform_device *dev)
{
 struct pxa_i2c *i2c = platform_get_drvdata(dev);

 i2c_del_adapter(&i2c->adap);

 clk_disable_unprepare(i2c->clk);

 return 0;
}
