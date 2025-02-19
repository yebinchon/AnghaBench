
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_bus {struct dev_pm_opp* clk; int curr_freq; struct device* dev; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct dev_pm_opp {int dummy; } ;


 scalar_t__ IS_ERR (struct dev_pm_opp*) ;
 int PTR_ERR (struct dev_pm_opp*) ;
 int clk_disable_unprepare (struct dev_pm_opp*) ;
 unsigned long clk_get_rate (struct dev_pm_opp*) ;
 int clk_prepare_enable (struct dev_pm_opp*) ;
 int dev_err (struct device*,char*) ;
 int dev_pm_opp_get_freq (struct dev_pm_opp*) ;
 int dev_pm_opp_of_add_table (struct device*) ;
 int dev_pm_opp_of_remove_table (struct device*) ;
 int dev_pm_opp_put (struct dev_pm_opp*) ;
 struct dev_pm_opp* devfreq_recommended_opp (struct device*,unsigned long*,int ) ;
 struct dev_pm_opp* devm_clk_get (struct device*,char*) ;

__attribute__((used)) static int exynos_bus_parse_of(struct device_node *np,
         struct exynos_bus *bus)
{
 struct device *dev = bus->dev;
 struct dev_pm_opp *opp;
 unsigned long rate;
 int ret;


 bus->clk = devm_clk_get(dev, "bus");
 if (IS_ERR(bus->clk)) {
  dev_err(dev, "failed to get bus clock\n");
  return PTR_ERR(bus->clk);
 }

 ret = clk_prepare_enable(bus->clk);
 if (ret < 0) {
  dev_err(dev, "failed to get enable clock\n");
  return ret;
 }


 ret = dev_pm_opp_of_add_table(dev);
 if (ret < 0) {
  dev_err(dev, "failed to get OPP table\n");
  goto err_clk;
 }

 rate = clk_get_rate(bus->clk);

 opp = devfreq_recommended_opp(dev, &rate, 0);
 if (IS_ERR(opp)) {
  dev_err(dev, "failed to find dev_pm_opp\n");
  ret = PTR_ERR(opp);
  goto err_opp;
 }
 bus->curr_freq = dev_pm_opp_get_freq(opp);
 dev_pm_opp_put(opp);

 return 0;

err_opp:
 dev_pm_opp_of_remove_table(dev);
err_clk:
 clk_disable_unprepare(bus->clk);

 return ret;
}
