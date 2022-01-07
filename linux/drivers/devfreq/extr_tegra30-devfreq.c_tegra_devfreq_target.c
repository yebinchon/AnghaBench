
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_devfreq {int emc_clock; struct devfreq* devfreq; } ;
struct device {int dummy; } ;
struct devfreq {unsigned long previous_freq; } ;
struct dev_pm_opp {int dummy; } ;


 scalar_t__ IS_ERR (struct dev_pm_opp*) ;
 int PTR_ERR (struct dev_pm_opp*) ;
 int clk_set_min_rate (int ,unsigned long) ;
 int clk_set_rate (int ,int ) ;
 int dev_err (struct device*,char*,unsigned long) ;
 struct tegra_devfreq* dev_get_drvdata (struct device*) ;
 unsigned long dev_pm_opp_get_freq (struct dev_pm_opp*) ;
 int dev_pm_opp_put (struct dev_pm_opp*) ;
 struct dev_pm_opp* devfreq_recommended_opp (struct device*,unsigned long*,int ) ;

__attribute__((used)) static int tegra_devfreq_target(struct device *dev, unsigned long *freq,
    u32 flags)
{
 struct tegra_devfreq *tegra = dev_get_drvdata(dev);
 struct devfreq *devfreq = tegra->devfreq;
 struct dev_pm_opp *opp;
 unsigned long rate;
 int err;

 opp = devfreq_recommended_opp(dev, freq, flags);
 if (IS_ERR(opp)) {
  dev_err(dev, "Failed to find opp for %lu Hz\n", *freq);
  return PTR_ERR(opp);
 }
 rate = dev_pm_opp_get_freq(opp);
 dev_pm_opp_put(opp);

 err = clk_set_min_rate(tegra->emc_clock, rate);
 if (err)
  return err;

 err = clk_set_rate(tegra->emc_clock, 0);
 if (err)
  goto restore_min_rate;

 return 0;

restore_min_rate:
 clk_set_min_rate(tegra->emc_clock, devfreq->previous_freq);

 return err;
}
