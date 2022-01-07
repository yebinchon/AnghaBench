
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_bus {int * opp_table; int clk; } ;
struct device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct exynos_bus* dev_get_drvdata (struct device*) ;
 int dev_pm_opp_of_remove_table (struct device*) ;
 int dev_pm_opp_put_regulators (int *) ;
 int dev_warn (struct device*,char*) ;
 int exynos_bus_disable_edev (struct exynos_bus*) ;

__attribute__((used)) static void exynos_bus_exit(struct device *dev)
{
 struct exynos_bus *bus = dev_get_drvdata(dev);
 int ret;

 ret = exynos_bus_disable_edev(bus);
 if (ret < 0)
  dev_warn(dev, "failed to disable the devfreq-event devices\n");

 dev_pm_opp_of_remove_table(dev);
 clk_disable_unprepare(bus->clk);
 if (bus->opp_table) {
  dev_pm_opp_put_regulators(bus->opp_table);
  bus->opp_table = ((void*)0);
 }
}
