
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct cdns_i2c {int clk; int clk_rate_change_nb; int adap; } ;


 int clk_disable_unprepare (int ) ;
 int clk_notifier_unregister (int ,int *) ;
 int i2c_del_adapter (int *) ;
 struct cdns_i2c* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;

__attribute__((used)) static int cdns_i2c_remove(struct platform_device *pdev)
{
 struct cdns_i2c *id = platform_get_drvdata(pdev);

 i2c_del_adapter(&id->adap);
 clk_notifier_unregister(id->clk, &id->clk_rate_change_nb);
 clk_disable_unprepare(id->clk);
 pm_runtime_disable(&pdev->dev);

 return 0;
}
