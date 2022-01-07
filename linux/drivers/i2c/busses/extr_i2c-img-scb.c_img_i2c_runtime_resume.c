
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct img_i2c {int sys_clk; int scb_clk; } ;
struct device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (struct device*,char*) ;
 struct img_i2c* dev_get_drvdata (struct device*) ;

__attribute__((used)) static int img_i2c_runtime_resume(struct device *dev)
{
 struct img_i2c *i2c = dev_get_drvdata(dev);
 int ret;

 ret = clk_prepare_enable(i2c->sys_clk);
 if (ret) {
  dev_err(dev, "Unable to enable sys clock\n");
  return ret;
 }

 ret = clk_prepare_enable(i2c->scb_clk);
 if (ret) {
  dev_err(dev, "Unable to enable scb clock\n");
  clk_disable_unprepare(i2c->sys_clk);
  return ret;
 }

 return 0;
}
