
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xiic_i2c {int clk; int adap; } ;
struct platform_device {int dev; } ;


 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int *,char*) ;
 int i2c_del_adapter (int *) ;
 struct xiic_i2c* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;
 int xiic_deinit (struct xiic_i2c*) ;

__attribute__((used)) static int xiic_i2c_remove(struct platform_device *pdev)
{
 struct xiic_i2c *i2c = platform_get_drvdata(pdev);
 int ret;


 i2c_del_adapter(&i2c->adap);

 ret = clk_prepare_enable(i2c->clk);
 if (ret) {
  dev_err(&pdev->dev, "Unable to enable clock.\n");
  return ret;
 }
 xiic_deinit(i2c);
 clk_disable_unprepare(i2c->clk);
 pm_runtime_disable(&pdev->dev);

 return 0;
}
