
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct dw_i3c_master {int core_clk; int core_rst; int base; } ;


 int clk_disable_unprepare (int ) ;
 int i3c_master_unregister (int *) ;
 struct dw_i3c_master* platform_get_drvdata (struct platform_device*) ;
 int reset_control_assert (int ) ;

__attribute__((used)) static int dw_i3c_remove(struct platform_device *pdev)
{
 struct dw_i3c_master *master = platform_get_drvdata(pdev);
 int ret;

 ret = i3c_master_unregister(&master->base);
 if (ret)
  return ret;

 reset_control_assert(master->core_rst);

 clk_disable_unprepare(master->core_clk);

 return 0;
}
