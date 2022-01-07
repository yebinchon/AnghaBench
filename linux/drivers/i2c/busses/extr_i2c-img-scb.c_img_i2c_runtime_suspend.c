
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct img_i2c {int sys_clk; int scb_clk; } ;
struct device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct img_i2c* dev_get_drvdata (struct device*) ;

__attribute__((used)) static int img_i2c_runtime_suspend(struct device *dev)
{
 struct img_i2c *i2c = dev_get_drvdata(dev);

 clk_disable_unprepare(i2c->scb_clk);
 clk_disable_unprepare(i2c->sys_clk);

 return 0;
}
