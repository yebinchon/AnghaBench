
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct cdns_i3c_master {int pclk; int sysclk; int base; } ;


 int clk_disable_unprepare (int ) ;
 int i3c_master_unregister (int *) ;
 struct cdns_i3c_master* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int cdns_i3c_master_remove(struct platform_device *pdev)
{
 struct cdns_i3c_master *master = platform_get_drvdata(pdev);
 int ret;

 ret = i3c_master_unregister(&master->base);
 if (ret)
  return ret;

 clk_disable_unprepare(master->sysclk);
 clk_disable_unprepare(master->pclk);

 return 0;
}
