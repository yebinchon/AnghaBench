
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_bus {int clk; } ;
struct device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct exynos_bus* dev_get_drvdata (struct device*) ;
 int dev_pm_opp_of_remove_table (struct device*) ;

__attribute__((used)) static void exynos_bus_passive_exit(struct device *dev)
{
 struct exynos_bus *bus = dev_get_drvdata(dev);

 dev_pm_opp_of_remove_table(dev);
 clk_disable_unprepare(bus->clk);
}
